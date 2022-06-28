import 'dart:developer';

import 'package:shared_preferences/shared_preferences.dart';

class SharedPref {
  static save(String key, value) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString('intValue', value);
  }

  static getUser() {}
  static updateDta() async {
    final prefs = await SharedPreferences.getInstance();
    var d = prefs.get("intValue");
    log(d.toString());
  }
}
