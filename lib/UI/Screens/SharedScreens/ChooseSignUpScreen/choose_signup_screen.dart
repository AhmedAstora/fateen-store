import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:twnty2/Helper/Providers/app_provider.dart';

import '../../../../Helper/Router/router.dart';
import '../../../CustomWidget/custom_bottom.dart';
import '../../../Utils/constant.dart';
import '../../UserScreens/SignUpScreen/sign_up_screen.dart';
import '../../VendorScreens/SignUpVendorScreen/sign_up_vendor_screen.dart';

class ChooseSignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Consumer<AppProvider>(builder: (context, provider, _) {
      return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 105.h,
                ),
                Center(
                    child: Image.asset(
                  'assets/images/logo.png',
                  height: 130.h,
                )),
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
                    provider.userIndex = 0;
                    provider.notifyListeners();
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
                          'User',
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
                                value: provider.userIndex,
                                groupValue: 0,
                                onChanged: (value) {
                                  provider.userIndex = 0;
                                  provider.notifyListeners();
                                }))
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 25.h),
                InkWell(
                  onTap: () async {
                    provider.userIndex = 1;
                    provider.notifyListeners();
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
                          'Vendor',
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
                                value: provider.userIndex,
                                groupValue: 1,
                                onChanged: (value) {
                                  provider.userIndex = 1;
                                  provider.notifyListeners();
                                }))
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 117.h),
                CustomBottom(
                  onTap: () {
                    if (provider.userIndex == 0) {
                      RouterHelper.routerHelper
                          .routingToSpecificWidgetWithoutPop(SignUpScreen());
                    } else {
                      RouterHelper.routerHelper
                          .routingToSpecificWidgetWithoutPop(
                              SignUpVendorScreen());
                    }
                  },
                  height: 48.h,
                  style: TextStyle(
                      fontSize: 18.sp,
                      color: Colors.white,
                      fontWeight: FontWeight.w600),
                  title: 'Next',
                  margin: EdgeInsets.symmetric(horizontal: 14.w),
                ),
              ],
            ),
          ),
        ),
      );
    });
  }
}
