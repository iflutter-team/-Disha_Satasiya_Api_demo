// // To parse this JSON data, do
// //
// //     final photosModel = photosModelFromJson(jsonString);

// import 'dart:convert';

// List<PhotosModel> photosModelFromJson(String str) => List<PhotosModel>.from(json.decode(str).map((x) => PhotosModel.fromJson(x)));

// String photosModelToJson(List<PhotosModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

// class PhotosModel {
//     int albumId;
//     int id;
//     String title;
//     String url;
//     String thumbnailUrl;

//     PhotosModel({
//         required this.albumId,
//         required this.id,
//         required this.title,
//         required this.url,
//         required this.thumbnailUrl,
//     });

//     factory PhotosModel.fromJson(Map<String, dynamic> json) => PhotosModel(
//         albumId: json["albumId"],
//         id: json["id"],
//         title: json["title"],
//         url: json["url"],
//         thumbnailUrl: json["thumbnailUrl"],
//     );

//     Map<String, dynamic> toJson() => {
//         "albumId": albumId,
//         "id": id,
//         "title": title,
//         "url": url,
//         "thumbnailUrl": thumbnailUrl,
//     };
// }

// To parse this JSON data, do
//
//     final productMode = productModeFromJson(jsonString);

import 'dart:convert';

ProductMode productModeFromJson(String str) => ProductMode.fromJson(json.decode(str));

String productModeToJson(ProductMode data) => json.encode(data.toJson());

class ProductMode {
    List<Product>? products;
    int? total;
    int? skip;
    int? limit;

    ProductMode({
        this.products,
        this.total,
        this.skip,
        this.limit,
    });

    factory ProductMode.fromJson(Map<String, dynamic> json) => ProductMode(
        products: json["products"] == null ? [] : List<Product>.from(json["products"]!.map((x) => Product.fromJson(x))),
        total: json["total"],
        skip: json["skip"],
        limit: json["limit"],
    );

    Map<String, dynamic> toJson() => {
        "products": products == null ? [] : List<dynamic>.from(products!.map((x) => x.toJson())),
        "total": total,
        "skip": skip,
        "limit": limit,
    };
}

class Product {
    int? id;
    String? title;
    String? description;
    int? price;
    double? discountPercentage;
    double? rating;
    int? stock;
    String? brand;
    String? category;
    String? thumbnail;
    List<String>? images;

    Product({
        this.id,
        this.title,
        this.description,
        this.price,
        this.discountPercentage,
        this.rating,
        this.stock,
        this.brand,
        this.category,
        this.thumbnail,
        this.images,
    });

    factory Product.fromJson(Map<String, dynamic> json) => Product(
        id: json["id"],
        title: json["title"],
        description: json["description"],
        price: json["price"],
        discountPercentage: json["discountPercentage"]?.toDouble(),
        rating: json["rating"]?.toDouble(),
        stock: json["stock"],
        brand: json["brand"],
        category: json["category"],
        thumbnail: json["thumbnail"],
        images: json["images"] == null ? [] : List<String>.from(json["images"]!.map((x) => x)),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "description": description,
        "price": price,
        "discountPercentage": discountPercentage,
        "rating": rating,
        "stock": stock,
        "brand": brand,
        "category": category,
        "thumbnail": thumbnail,
        "images": images == null ? [] : List<dynamic>.from(images!.map((x) => x)),
    };
}
