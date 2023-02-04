import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:string_validator/string_validator.dart';

import '../Model/OnBoarding.dart';
import '../Model/Slide.dart';

class AppProvider extends ChangeNotifier {
  bool isHiden = false;
  int languageIndex = 0;

  int currentIndex = 0;
  int indexNavigation = 0;
  int indexSellerNavigation = 0;
  int selectedSize = 0;
  int selectedtext = 0;
  bool isOneView = true;
  bool loading = false;
  File? file;
  RangeValues rangeValues= RangeValues(1, 2000);

  int selectedSubCategory = 0;

  TextEditingController emailController = TextEditingController();
  TextEditingController passwrodController = TextEditingController();
  TextEditingController phoneController = TextEditingController();

  TextEditingController contactUsController = TextEditingController();


  TextEditingController currentPasswordController = TextEditingController();
  TextEditingController newPasswordController = TextEditingController();
  TextEditingController confirmNewPasswordController = TextEditingController();

  String? nullValidator(String? value) {
    if (value!.isEmpty) {
      return 'Required Field';
    }
    return null;
  }

  String? emailValidation(String? value) {
    if (!isEmail(value!)) {
      return 'InCorrect Email syntax';
    }
  }

  void changeHomeView() {
    isOneView = !isOneView;
    notifyListeners();
  }

  void chageSelectedIndex(int i) {
    indexNavigation = i;
    notifyListeners();
  }
  void changeIndexNavigation(int i) {
    indexSellerNavigation = i;
    notifyListeners();
  }

  changeStatusPasseord() {
    isHiden = !isHiden;
    notifyListeners();
  }

  List<OnBoardingModel>? onboardingAr = [
    OnBoardingModel(
        image: 'assets/images/slide3.png',
        title: 'Keep track of the timeavailable',
        body:
        'Track the time available for reservations either by map or by the place of your choice'),
    OnBoardingModel(
        image: 'assets/images/slide2.png',
        title: 'Book meeting room',
        body: 'Save your time and effort and book your meeting with Mesa'),
    OnBoardingModel(
        image: 'assets/images/slide1.png',
        title: 'Pay via the mesa',
        body: 'Get paid to provide meeting rooms in your workplace'),
  ];
  List<String> titleProfile = [
    'Edit_Profile',
    'Adress',
    'My cards',
    'Terms_conditions',
    'Privacy_Policy',
    'language',
    'change_password',
    'Contact_us',
    'About_us',
    'App_Rate',
    'Delete Account',
    'Log_out'
  ];
  List<String> imagesProfile = [
    'assets/images/edit_profile.png',
    'assets/images/info.png',
    'assets/images/info.png',
    'assets/images/terms.png',
    'assets/images/privacy.png',
    'assets/images/lang.png',
    'assets/images/password.png',
    'assets/images/contact_us.png',
    'assets/images/info.png',
    'assets/images/rate_app.png',
    'assets/images/Delete.png',
    'assets/images/log_out.png',
  ];
}
