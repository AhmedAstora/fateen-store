import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../Model/OnBoarding.dart';
import '../Model/Slide.dart';

class AppProvider extends ChangeNotifier {
  bool isHiden = false;
  int languageIndex = 0;
  int userIndex = 0;
  int currentIndex = 0;
  int indexNavigation = 0;
  int selectedSize = 0;


  void chageSelectedIndex(int i) {
    indexNavigation = i;
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


}
