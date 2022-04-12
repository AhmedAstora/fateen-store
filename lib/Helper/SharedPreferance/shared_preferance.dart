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

  bool getIsLoginFirstTime() {
    bool isFirstTime = sharedPreferences!.getBool('isFirstTime') ?? true;
    return isFirstTime;
  }

  setIsLoginFirstTime() {
    sharedPreferences!.setBool('isFirstTime', false);
  }

  setTokenId(String id) {
    sharedPreferences!.setString('Token', id);
  }

  getTokenId() {
    String TokenId = sharedPreferences!.getString('Token') ?? '';
    return TokenId;
  }



  saveMyName(String name) async {
    bool isSuccess = await sharedPreferences!.setString('name', name);
    log(isSuccess.toString());
  }

  String? getMyName() {
    return sharedPreferences!.getString('name');
  }
}
