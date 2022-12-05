import 'dart:developer';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:twnty2/Helper/Providers/app_provider.dart';
import 'package:twnty2/Helper/Providers/auth_provider.dart';
import 'package:twnty2/Helper/SharedPreferance/shared_preferance.dart';
import 'package:twnty2/UI/Screens/SelectLocationScreen/select_location_screen.dart';

import 'package:twnty2/UI/Screens/SplashScreen/splash_screen.dart';
import 'package:twnty2/UI/Utils/constant.dart';

import '../../../../Helper/Router/router.dart';

import '../../CustomWidget/slider/slide_dots.dart';
import '../../CustomWidget/slider/slide_item.dart';
import '../ChooseLanguageScreen/choose_language_screen.dart';

class OnBoardingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<AuthProvider>(builder: (context, provider, _) {
      return Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 50.h,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 30.w),
              width: double.infinity,
              alignment: Alignment.centerRight,
              child: GestureDetector(
                onTap: provider.currentPage !=
                        provider.slideList_welcome.length - 1
                    ? () {
                        SpHelper.spHelper.setIsLoginFirstTime();
                        RouterHelper.routerHelper
                            .routingToSpecificWidgetWithoutPop(SelectLocationScreen());
                      }
                    : null,
                child: Text(
                  "Skip".tr(),
                  style: TextStyle(
                    color: provider.currentPage !=
                            provider.slideList_welcome.length - 1
                        ? Color(0xff2D3748)
                        : Colors.transparent,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 520.h,
              child: PageView.builder(
                  scrollDirection: Axis.horizontal,
                  controller: provider.pageController,
                  onPageChanged: provider.onPageChanged,
                  itemCount: provider.slideList_welcome.length,
                  itemBuilder: (ctx, index) {
                    return SlideItem(index);
                  }),
            ),
            Container(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  for (int i = 0; i < provider.slideList_welcome.length; i++)
                    if (i == provider.currentPage)
                      SlideDots(true, mainAppColor, Colors.grey)
                    else
                      SlideDots(false, mainAppColor, Colors.grey)
                ],
              ),
            ),
            SizedBox(
              height: 100.h,
            ),
            InkWell(
                onTap: () {
                  if (provider.currentPage ==
                      provider.slideList_welcome.length - 1) {
                    SpHelper.spHelper.setIsLoginFirstTime();
                    RouterHelper.routerHelper
                        .routingToSpecificWidgetWithoutPop(SelectLocationScreen());
                  } else {
                    provider.pageController.nextPage(
                        duration: Duration(microseconds: 400),
                        curve: Curves.easeIn);
                  }
                },
                child: Container(
                  alignment: Alignment.center,
                  height: 45.h,
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(horizontal: 30.w),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: mainAppColor),
                  child: Text(
                    provider.currentPage !=
                            provider.slideList_welcome.length - 1
                        ? "Next"
                        : "Start",
                    style: TextStyle(fontSize: 16.sp, color: Colors.white,fontWeight: FontWeight.w700),
                  ),
                )),
          ],
        ),
      );
    });
  }
}
