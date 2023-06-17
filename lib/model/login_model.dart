// To parse this JSON data, do
//
//     final loginUser = loginUserFromJson(jsonString);

import 'dart:convert';

LoginUser loginUserFromJson(String str) => LoginUser.fromJson(json.decode(str));

String loginUserToJson(LoginUser data) => json.encode(data.toJson());

class LoginUser {
    int? status;
    String? message;
    Data? data;
    List<dynamic>? validationMessage;
    dynamic errorMessage;

    LoginUser({
        this.status,
        this.message,
        this.data,
        this.validationMessage,
        this.errorMessage,
    });

    factory LoginUser.fromJson(Map<String, dynamic> json) => LoginUser(
        status: json["Status"],
        message: json["Message"],
        data: json["Data"] == null ? null : Data.fromJson(json["Data"]),
        validationMessage: json["ValidationMessage"] == null ? [] : List<dynamic>.from(json["ValidationMessage"]!.map((x) => x)),
        errorMessage: json["ErrorMessage"],
    );

    Map<String, dynamic> toJson() => {
        "Status": status,
        "Message": message,
        "Data": data?.toJson(),
        "ValidationMessage": validationMessage == null ? [] : List<dynamic>.from(validationMessage!.map((x) => x)),
        "ErrorMessage": errorMessage,
    };
}

class Data {
    String? customerGuid;
    String? userName;
    String? emailId;
    String? message;
    bool? isValid;
    bool? rememberMe;
    int? customerId;

    Data({
        this.customerGuid,
        this.userName,
        this.emailId,
        this.message,
        this.isValid,
        this.rememberMe,
        this.customerId,
    });

    factory Data.fromJson(Map<String, dynamic> json) => Data(
        customerGuid: json["CustomerGuid"],
        userName: json["UserName"],
        emailId: json["EmailId"],
        message: json["Message"],
        isValid: json["IsValid"],
        rememberMe: json["RememberMe"],
        customerId: json["CustomerId"],
    );

    Map<String, dynamic> toJson() => {
        "CustomerGuid": customerGuid,
        "UserName": userName,
        "EmailId": emailId,
        "Message": message,
        "IsValid": isValid,
        "RememberMe": rememberMe,
        "CustomerId": customerId,
    };
}
