import 'dart:developer';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:provider/provider.dart';
import 'package:twnty2/Helper/Providers/app_provider.dart';
import 'package:twnty2/Helper/Providers/auth_provider.dart';
import 'package:twnty2/Helper/Router/router.dart';
import 'package:twnty2/UI/Utils/constant.dart';


import '../OnBoardingScreen/onboarding_screen.dart';
import '../SignInScreen/sign_in_screen.dart';

class SelectLocationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Consumer<AuthProvider>(builder: (context, provider, _) {
      return Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 50.h,
            ),
            InkWell(
              onTap: () {
                RouterHelper.routerHelper
                    .routingReplacementUntil(SignInScreen());
              },
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
                child: Text(
                  "Skip".tr(),
                  style: TextStyle(
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 50.h,
            ),
            Center(
              child: Image.asset(
                'assets/images/Map2.png',
                width: 276.w,
                height: 160.h,
              ),
            ),
            SizedBox(
              height: 110.h,
            ),
            Center(
              child: Text(
                "Detect location".tr(),
                style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold,
                    color: greyColor),
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            Center(
              child: Container(
                width: 215.w,
                child: Text(
                  "Please select a location to allow the app to access your location"
                      .tr(),
                  style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                      height: 1.2),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Spacer(),
            Center(
              child: InkWell(
                onTap: () async {
                  provider.getUserLocation();
                },
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 25.w),
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width,
                  height: 50.h,
                  child: provider.isLoading
                      ? CircularProgressIndicator(
                          color: Colors.white,
                          strokeWidth: 2,
                        )
                      : Text(
                          "Allow access".tr(),
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w600),
                        ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: mainAppColor),
                ),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            InkWell(
              onTap: () {
                RouterHelper.routerHelper
                    .routingReplacementUntil(SignInScreen());
              },
              child: Center(
                child: Text(
                  "Disallow".tr(),
                  style: TextStyle(
                      color: greyColor,
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
            SizedBox(
              height: 100.h,
            ),
          ],
        ),
      );
    });
  }
}
