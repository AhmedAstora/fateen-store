import 'package:flutter/cupertino.dart';

import '../Model/OnBoarding.dart';

class AppProvider extends ChangeNotifier {
  bool isHiden = false;

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
