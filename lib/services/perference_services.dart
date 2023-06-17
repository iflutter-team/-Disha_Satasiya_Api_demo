// ignore_for_file: avoid_print

import 'package:shared_preferences/shared_preferences.dart';

class PerfServices {
  static SharedPreferences? _pref;

  static Future<void> init() async {
    _pref = await SharedPreferences.getInstance();
  }

  //SET DATA

  static Future<void> setvalue(String key, dynamic value) async {
    if (value is String) {
      await _pref!.setString(key, value);
    } else if (value is int) {
      await _pref!.setInt(key, value);
    } else if (value is bool) {
      await _pref!.setBool(key, value);
    } else if (value is double) {
      await _pref!.setDouble(key, value);
    } else if (value is List<String>) {
      await _pref!.setStringList(key, value);
    } else {
      print('No Data Found');   
    }
  }

  // GET DATAs

  static String getString(String key) {
    return _pref!.getString(key) ?? "";
  }

  static int getInt(String key) {
    return _pref!.getInt(key) ?? 0;
  }

  static double getDouble(String key) {
    return _pref!.getDouble(key) ?? 0.0;
  }

  static bool getBool(String key) {
    return _pref!.getBool(key) ?? false;
  }

  static List getListOfString(String key) {
    return _pref!.getStringList(key) ?? [];
  }

  //CLEAR PREF

  static clearPref() {
    _pref!.clear();
  }

  //REMOVE PREF

  static removePref() {
    _pref!.clear();
  }
}
