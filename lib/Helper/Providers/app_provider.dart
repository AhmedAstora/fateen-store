import 'dart:io';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:string_validator/string_validator.dart';
import 'package:twnty2/UI/Screens/VendorScreens/AddADealScreen/add_a_deal_screen.dart';

import '../../UI/Screens/VendorScreens/AddADealScreen/add_a_deal_screen1.dart';
import '../../UI/Screens/VendorScreens/AddADealScreen/add_a_deal_screen2.dart';
import '../../UI/Screens/VendorScreens/AddADealScreen/add_a_deal_screen3.dart';
import '../../UI/Screens/VendorScreens/OrderDetailsScreen1/buyer_data_screen.dart';
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
  RangeValues rangeValues = RangeValues(1, 2000);

  int selectedSubCategory = 0;
  int cureentStep = 0;
  int cureentStepOrder = 1;

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
  List<String> titleUserProfile = [
    'Edit_Profile',
    'Favorite',
    'Address',
    'payment cards',
    'change_password',
    'language',
    'Terms_conditions',
    'Privacy_Policy',
    'Contact_us',
    'About_us',
    'App_Rate',
    'Delete Account',
    'Log_out'
  ];

  List<String> imagesUserProfile = [
    'assets/images/edit_profile.png',
    'assets/images/fav.png',
    'assets/images/info.png',
    'assets/images/credit.png',
    'assets/images/password.png',
    'assets/images/lang.png',
    'assets/images/terms.png',
    'assets/images/privacy.png',
    'assets/images/contact_us.png',
    'assets/images/info.png',
    'assets/images/rate_app.png',
    'assets/images/Delete.png',
    'assets/images/log_out.png',
  ];

  List<String> titleVendorProfile = [
    'Edit_Profile',
    'Balance',
    'Registration_data',
    'Branches',
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

  List<String> imagesVendorProfile = [
    'assets/images/edit_profile.png',
    'assets/images/balance.png',
    'assets/images/data_register.png',
    'assets/images/branch.png',
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

  List<Widget> addServiceWidgets = [
    AddADealScreen1(),
    AddADealScreen2(),
    AddADealScreen3(),
  ];
  List<Widget> buyerWidgets = [
    BayerDataScreen(),
    BayerDataScreen(),
    BayerDataScreen(),
  ];
}
