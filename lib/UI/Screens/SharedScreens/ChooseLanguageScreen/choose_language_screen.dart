import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import 'package:twnty2/Helper/SharedPreferance/shared_preferance.dart';
import 'package:twnty2/UI/Utils/constant.dart';

import '../../../../Helper/Providers/app_provider.dart';
import '../../../../Helper/Router/router.dart';

import '../OnBoardingScreen/onboarding_screen.dart';

class ChooseLanguageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Consumer<AppProvider>(builder: (context, provider, _) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 30.h,
                ),
                Center(
                  child: Image.asset(
                    'assets/images/language.png',
                    width: 110.r,
                    height: 110.r,
                  ),
                ),
                SizedBox(
                  height: 65.h,
                ),
                Text(
                  "Choose the language of the application".tr(),
                  style:
                      TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w600),
                ),
                SizedBox(height: 15.h),
                InkWell(
                  onTap: () async {
                    SpHelper.spHelper.setLang('en');
                    await context.setLocale(Locale("en"));
                    provider.languageIndex = 0;
                    context.locale = Locale('en');
                    provider.notifyListeners();
                    RouterHelper.routerHelper
                        .routingReplacement(OnBoardingScreen());
                    SpHelper.spHelper.setIsLoginFirstTimeLang();
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    height: 55.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(width: .5, color: Colors.grey)),
                    child: Row(
                      children: [
                        Text(
                          'English',
                          style: TextStyle(
                              fontSize: 14.sp,
                              color: Colors.grey[700],
                              fontWeight: FontWeight.w400),
                        ),
                        Spacer(),
                        Container(
                            height: 30.h,
                            width: 30.w,
                            child: Radio(
                                activeColor: mainAppColor,
                                value: provider.languageIndex,
                                groupValue: 0,
                                onChanged: (value) {}))
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 25.h),
                InkWell(
                  onTap: () async {
                    SpHelper.spHelper.setLang('ar');
                    context.locale = Locale('ar');
                    await context.setLocale(Locale("ar"));

                    RouterHelper.routerHelper
                        .routingReplacement(OnBoardingScreen());
                    provider.languageIndex = 1;
                    SpHelper.spHelper.setIsLoginFirstTimeLang();
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    height: 55.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(width: .5, color: Colors.grey)),
                    child: Row(
                      children: [
                        Text(
                          'العربية',
                          style: TextStyle(
                              fontSize: 14.sp,
                              color: Colors.grey[700],
                              fontWeight: FontWeight.w400),
                        ),
                        Spacer(),
                        Container(
                            height: 30.h,
                            width: 30.w,
                            child: Radio(
                                activeColor: mainAppColor,
                                value: provider.languageIndex,
                                groupValue: 1,
                                onChanged: (value) {}))
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 25.h),
                // InkWell(
                //   onTap: () {
                //     SpHelper.spHelper.setLang('tr');
                //     context.locale = Locale('tr');
                //     RouterHelper.routerHelper
                //         .routingReplacement(OnBoardingScreen());
                //     provider.languageIndex = 2;
                //     SpHelper.spHelper.setIsLoginFirstTimeLang();
                //
                //     provider.notifyListeners();
                //   },
                //   child: Container(
                //     padding: EdgeInsets.symmetric(horizontal: 20.w),
                //     height: 60.h,
                //     decoration: BoxDecoration(
                //         borderRadius: BorderRadius.circular(10),
                //         border: Border.all(width: .5, color: Colors.grey)),
                //     child: Row(
                //       children: [
                //         Text(
                //           'Türkçe',
                //           style: TextStyle(
                //               fontSize: 18.sp,
                //               color: SpHelper.spHelper.getTheme()!
                //                   ? Colors.white
                //                   : Colors.grey[700],
                //               fontWeight: FontWeight.w400),
                //         ),
                //         Spacer(),
                //         Container(
                //             height: 30.h,
                //             width: 30.w,
                //             child: Radio(
                //                 activeColor: secondColor,
                //                 value: provider.languageIndex,
                //                 groupValue: 2,
                //                 onChanged: (value) {}))
                //       ],
                //     ),
                //   ),
                // ),
                SizedBox(
                  height: 100.h,
                ),
                Center(
                  child: Container(
                    width: 165.w,
                    child: Text(
                      "You can change the language later from the settings"
                          .tr(),
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 14.sp,
                        height: 1.2,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 200.h,
                )
              ],
            ),
          ),
        ),
      );
    });
  }
}
