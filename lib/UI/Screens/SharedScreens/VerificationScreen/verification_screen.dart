import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_countdown_timer/current_remaining_time.dart';
import 'package:flutter_countdown_timer/flutter_countdown_timer.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pinput/pinput.dart';
import 'package:provider/provider.dart';
import 'package:twnty2/Helper/Router/router.dart';
import 'package:twnty2/UI/CustomWidget/back_appBar_widget.dart';
import 'package:twnty2/UI/CustomWidget/custom_bottom.dart';
import 'package:twnty2/UI/Screens/SharedScreens/ForgetPasswordScreen/forget_password_screen.dart';
import 'package:twnty2/UI/Screens/SharedScreens/ForgetPasswordScreen/reset_password_screen.dart';
import 'package:twnty2/UI/Screens/UserScreens/MainNavigationScreen/main_navigation_screen.dart';
import 'package:twnty2/UI/Screens/VendorScreens/MainSellerNavigationScreen/main_seller_navigation_screen.dart';
import 'package:twnty2/UI/Utils/constant.dart';

import 'dart:ui' as ui;

import '../../../../Helper/Providers/auth_provider.dart';
import '../SignInScreen/widget/success_dialog.dart';

class VerificationScreen extends StatelessWidget {
  final FocusNode _pinPutFocusNode = FocusNode();
  int endTime = DateTime.now().millisecondsSinceEpoch + 1000 * 60;

  int? type;

  VerificationScreen({this.type});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Consumer<AuthProvider>(builder: (context, provider, _) {
      return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text(
            "Verification Code".tr(),
            style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w400,
                color: Colors.black),
          ),
          leading: BackAppBarWidget(),
        ),
        body: Form(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 16.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 24.h,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20.w),
                  child: Center(
                    child: Text(
                      'VerificationT1'.tr(),
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 14.sp,
                        height: 1.4,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 55.h,
                ),
                Container(
                  alignment: Alignment.center,
                  child: Directionality(
                    textDirection: ui.TextDirection.ltr,
                    child: Pinput(
                      controller: provider.pinPutController,
                      androidSmsAutofillMethod:
                          AndroidSmsAutofillMethod.smsRetrieverApi,
                      defaultPinTheme: PinTheme(
                        width: 50,
                        height: 50,
                        margin: EdgeInsets.symmetric(horizontal: 3.w),
                        textStyle: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.w500),
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          border: Border.all(
                              color: provider.wrongCode
                                  ? Colors.red
                                  : Colors.black,
                              width: 1),
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      focusNode: _pinPutFocusNode,
                    ),
                  ),
                ),
                Visibility(
                  visible: !provider.wrongCode,
                  child: SizedBox(
                    height: 34.h,
                  ),
                ),
                Visibility(
                  visible: provider.wrongCode,
                  child: SizedBox(
                    height: 24.h,
                  ),
                ),
                Visibility(
                    visible: provider.wrongCode,
                    child: Center(
                        child: Text(
                      'Verification code invalid'.tr(),
                      style: TextStyle(fontSize: 14.sp, color: Colors.red),
                    ))),
                Visibility(
                  visible: provider.wrongCode,
                  child: SizedBox(
                    height: 16.h,
                  ),
                ),
                CustomBottom(
                  title: 'Verification'.tr(),
                  onTap: () {
                    if (provider.pinPutController.text.length < 4) {
                      provider.wrongCode = true;
                      provider.notifyListeners();
                    } else {
                      provider.wrongCode = false;
                      provider.notifyListeners();
                      if (type == 1) {

                        RouterHelper.routerHelper
                            .routingToSpecificWidgetWithoutPop(
                            ResetPasswordScreen());
                        // provider.verfiyCode(context);
                      } else if (type == 2) {
                        // provider.verfiyForgetPasswordCode(context);

                        if (provider.userIndex == 0) {
                          RouterHelper.routerHelper
                              .routingReplacementUntil(
                                  MainNavigationScreen());
                        } else if(provider.userIndex ==1) {
                          RouterHelper.routerHelper
                              .routingReplacementUntil(
                                  MainSellerNavigationScreen());
                        }
                      }
                    }
                  },
                  margin: EdgeInsets.symmetric(horizontal: 30.w),
                ),
                SizedBox(
                  height: 16.h,
                ),
                Visibility(
                  visible: !provider.isExpire,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        child: Text(
                          "Resend the code in ".tr(),
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 14.sp,
                            height: 1.4,
                            color: Colors.grey,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 5.w,
                      ),
                      Container(
                        child: CountdownTimer(
                          onEnd: () {
                            provider.isExpire = true;
                            provider.notifyListeners();
                          },
                          endTime: endTime,
                          widgetBuilder: (_, CurrentRemainingTime? time) {
                            if (time == null) {
                              return Text('0');
                            }
                            return Text(
                              '${time.sec}',
                              style: TextStyle(
                                fontSize: 13.sp,
                                color: mainAppColor,
                                fontWeight: FontWeight.w500,
                              ),
                            );
                          },
                        ),
                      ),
                      SizedBox(
                        width: 5.w,
                      ),
                      Container(
                        child: Text(
                          "seconds".tr(),
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 15.sp,
                            height: 1.4,
                            color: Colors.grey,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Visibility(
                  visible: provider.isExpire,
                  child: InkWell(
                    onTap: () {
                      if (type == 1) {
                        // provider.ResendCode(context, 1);
                        endTime =
                            DateTime.now().millisecondsSinceEpoch + 1000 * 60;
                        provider.isExpire = false;
                      } else if (type == 2) {
                        // provider.ResendCode(context, 2);
                        endTime =
                            DateTime.now().millisecondsSinceEpoch + 1000 * 60;
                        provider.isExpire = false;
                      }

                      provider.notifyListeners();
                    },
                    child: Center(
                      child: Text(
                        '${"Resend Code".tr()}',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 14.sp,
                            color: Colors.black),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 5.h,
                ),
              ],
            ),
          ),
        ),
      );
    });
  }
}
