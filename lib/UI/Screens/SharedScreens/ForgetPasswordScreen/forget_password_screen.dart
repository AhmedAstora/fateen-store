import 'dart:developer';

import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:twnty2/Helper/Providers/app_provider.dart';
import 'package:twnty2/Helper/Providers/auth_provider.dart';
import 'package:twnty2/Helper/Router/router.dart';

import '../../../CustomWidget/back_appBar_widget.dart';
import '../../../CustomWidget/custom_bottom.dart';
import '../../../CustomWidget/custom_text_field.dart';
import '../VerificationScreen/verification_screen.dart';


class ForgetPasswordScreen extends StatelessWidget {
  GlobalKey<FormState> forgetFormKey = GlobalKey<FormState>();

  signupValidate() {
    bool isSuccess = forgetFormKey.currentState!.validate();
    return isSuccess;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Consumer<AuthProvider>(builder: (context, provider, _) {
      return Scaffold(
        backgroundColor: Colors.white,
        // backgroundColor: Colors.white,
        appBar: AppBar(
          leading: BackAppBarWidget(),
          elevation: 0,
          centerTitle: true,
          title: Text(
            'Forgot Password',
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 16.sp,
                color: Colors.black),
          ),
          backgroundColor: Colors.white,
        ),
        body: SingleChildScrollView(
            child: Form(
          key: forgetFormKey,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 24.h,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 15.w),
                  child: Text(
                    'Enter your Email and we\'ll send you a login code to get back into your account.',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12.sp,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  height: 34.h,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 3.w),
                  child: Text(
                    'Email or phone',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12.sp,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                CustomTextField(
                    height: 50.h,
                    validationFun: provider.emailValidation,
                    onClick: () {},
                    hintText: 'example@gmail.com',
                    isPassword: false,
                    fillColor: Colors.white,
                    fontsize: 14.sp,
                    filled: true,
                    controller: null),
                SizedBox(
                  height: 24.h,
                ),
                CustomBottom(
                  onTap: () {
                    if (signupValidate()) {
                      RouterHelper.routerHelper
                          .routingToSpecificWidgetWithoutPop(
                          VerificationScreen(type: 1,));
                      // provider.forgetPassword(context);
                    }
                  },
                  title: 'Next',
                ),
              ],
            ),
          ),
        )),
      );
    });
  }
}
