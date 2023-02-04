import 'dart:io';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:twnty2/Helper/Providers/app_provider.dart';
import 'package:twnty2/Helper/Providers/auth_provider.dart';
import 'package:twnty2/Helper/Router/router.dart';
import 'package:twnty2/Helper/SharedPreferance/shared_preferance.dart';
import 'package:twnty2/UI/CustomWidget/custom_bottom.dart';
import 'package:twnty2/UI/CustomWidget/custom_text.dart';
import 'package:twnty2/UI/Screens/UserScreens/MainNavigationScreen/main_navigation_screen.dart';
import 'package:twnty2/UI/Utils/constant.dart';
import 'package:twnty2/UI/Utils/constant.dart';
import 'package:twnty2/UI/Utils/constant.dart';

import '../../../CustomWidget/custom_text_field.dart';
import '../../SharedScreens/ChooseSignUpScreen/choose_signup_screen.dart';
import '../../SharedScreens/ForgetPasswordScreen/forget_password_screen.dart';

class SignInScreen extends StatelessWidget {
  GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();

  loginValidate() {
    bool isSuccess = loginFormKey.currentState!.validate();
    return isSuccess;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Consumer<AuthProvider>(builder: (context, provider, _) {
      return Form(
        key: loginFormKey,
        child: Scaffold(
          backgroundColor: Colors.white,
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
                  Center(
                      child: Image.asset(
                    'assets/images/logo.png',
                    height: 100.h,
                  )),
                  SizedBox(
                    height: 20.h,
                  ),
                  Center(
                    child: Text(
                      "Sign in".tr(),
                      style: TextStyle(
                          fontWeight: FontWeight.w500, fontSize: 18.sp),
                    ),
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  Text(
                    '${"Email".tr()}',
                    style: TextStyle(
                        color: greyColor,
                        fontWeight: FontWeight.w500,
                        fontSize: 12.sp),
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  CustomTextField(
                      validationFun: provider.emailValidation,
                      onClick: () {},
                      fontsize: 14.sp,
                      hintText: 'Email',
                      isPassword: false,
                      controller: provider.emailController),
                  SizedBox(
                    height: 24.h,
                  ),
                  Text(
                    '${"Password".tr()}',
                    style: TextStyle(
                        color: greyColor,
                        fontWeight: FontWeight.w500,
                        fontSize: 12.sp),
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  CustomTextField(
                      validationFun: provider.nullValidator,
                      onClick: () {},
                      fontsize: 14.sp,
                      hintText: '***********',
                      isPassword: true,
                      controller: provider.passwrodController),
                  Row(
                    children: [
                      InkWell(
                        onTap: () {
                          RouterHelper.routerHelper
                              .routingToSpecificWidgetWithoutPop(
                                  ForgetPasswordScreen());
                        },
                        child: Text(
                          "Forgot your password ?".tr(),
                          style: TextStyle(
                              color: mainAppColor,
                              fontWeight: FontWeight.w500,
                              fontSize: 14.sp),
                        ),
                      ),
                      Spacer(),
                      Transform.scale(
                        scaleY: .9,
                        scaleX: .9,
                        child: Checkbox(
                            activeColor: mainAppColor,
                            fillColor: MaterialStateProperty.resolveWith<Color>(
                                (states) {
                              if (states.contains(MaterialState.disabled)) {
                                return Colors.orange.withOpacity(.32);
                              }
                              return Colors.orange;
                            }),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4)),
                            value: SpHelper.spHelper.getRemember(),
                            onChanged: (value) {
                              provider.rememberMe = value!;
                              SpHelper.spHelper.setRemember(value);
                              provider.notifyListeners();
                            }),
                      ),
                      Text(
                        "Remember me".tr(),
                        style: TextStyle(
                            color: greyColor,
                            fontWeight: FontWeight.w500,
                            fontSize: 14.sp),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 70.h,
                  ),
                  CustomBottom(
                    onTap: () {
                      RouterHelper.routerHelper
                          .routingReplacementUntil(MainNavigationScreen());
                    },
                    title: 'Sign in',
                  ),
                  SizedBox(
                    height: 130.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an account?".tr(),
                        style: TextStyle(
                            color: greyColor,
                            fontWeight: FontWeight.w500,
                            fontSize: 12.sp),
                      ),
                      SizedBox(
                        width: 5.w,
                      ),
                      InkWell(
                        onTap: () {
                          RouterHelper.routerHelper
                              .routingToSpecificWidgetWithoutPop(
                                  ChooseSignUpScreen());
                        },
                        child: Text(
                          "Create a new account".tr(),
                          style: TextStyle(
                              color: mainAppColor,
                              fontWeight: FontWeight.w600,
                              fontSize: 12.sp),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      );
    });
  }
}
