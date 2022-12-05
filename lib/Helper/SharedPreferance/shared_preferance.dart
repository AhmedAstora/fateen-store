import 'dart:developer';

import 'package:shared_preferences/shared_preferences.dart';

class SpHelper {
  SpHelper._();

  static SpHelper spHelper = SpHelper._();
  SharedPreferences? sharedPreferences;

  initSharedPrefrences() async {
    sharedPreferences = await SharedPreferences.getInstance();
    log('hello');
  }

  bool getIsNotify() {
    bool isFirstTime = sharedPreferences!.getBool('notify') ?? true;
    return isFirstTime;
  }

  setIsNotify(bool notfiy) {
    sharedPreferences!.setBool('notify', notfiy);
  }

  bool getIsLoginFirstTime() {
    bool isFirstTime = sharedPreferences!.getBool('isFirstTime') ?? true;
    return isFirstTime;
  }

  setIsLoginFirstTime() {
    sharedPreferences!.setBool('isFirstTime', false);
  }

  setIsLoginFirstTimeLang() {
    sharedPreferences!.setBool('isFirstTimelang', false);
  }

  bool getIsLoginFirstTimeLang() {
    bool isFirstTime = sharedPreferences!.getBool('isFirstTimelang') ?? true;
    return isFirstTime;
  }

  setTokenId(String id) {
    sharedPreferences!.setString('Token', id);
  }

  getTokenId() {
    String TokenId = sharedPreferences!.getString('Token') ?? '';
    return TokenId;
  }

  saveMyEmail(String name) async {
    bool isSuccess = await sharedPreferences!.setString('email', name);
    log(isSuccess.toString());
  }

  String? getMyEmail() {
    return sharedPreferences!.getString('email');
  }

  saveMyPass(String name) async {
    bool isSuccess = await sharedPreferences!.setString('password', name);
    log(isSuccess.toString());
  }

  String? getMyPass() {
    return sharedPreferences!.getString('password');
  }

  setRemember(bool name) async {
    bool isSuccess = await sharedPreferences!.setBool('remember', name);
    log(isSuccess.toString());
  }

  bool? getRemember() {
    return sharedPreferences!.getBool('remember') ?? false;
  }

  setLang(String name) async {
    bool isSuccess = await sharedPreferences!.setString('lang', name);
    log(isSuccess.toString());
  }

  String? getLang() {
    return sharedPreferences!.getString('lang') ?? 'ar';
  }

  setTheme(bool theme) async {
    bool isSuccess = await sharedPreferences!.setBool('theme', theme);
    log(isSuccess.toString());
  }

  bool? getTheme() {
    return sharedPreferences!.getBool('theme') ?? true;
  }
}
