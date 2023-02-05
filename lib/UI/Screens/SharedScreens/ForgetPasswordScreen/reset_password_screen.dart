import 'dart:developer';

import 'package:country_code_picker/country_code_picker.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:twnty2/Helper/Providers/app_provider.dart';
import 'package:twnty2/Helper/Providers/auth_provider.dart';
import 'package:twnty2/Helper/Router/router.dart';

import '../../../CustomWidget/back_appBar_widget.dart';
import '../../../CustomWidget/custom_bottom.dart';
import '../../../CustomWidget/custom_text_field.dart';
import '../SignInScreen/sign_in_screen.dart';
import '../SignInScreen/widget/success_dialog.dart';

class ResetPasswordScreen extends StatelessWidget {
  GlobalKey<FormState> resetFormKey = GlobalKey<FormState>();

  signupValidate() {
    bool isSuccess = resetFormKey.currentState!.validate();
    return isSuccess;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Consumer<AuthProvider>(builder: (context, provider, _) {
      return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: BackAppBarWidget(),
          elevation: 0,
          centerTitle: true,
          title: Text(
            'Reset password'.tr(),
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 16.sp,
                color: Colors.black),
          ),
          backgroundColor: Colors.white,
        ),
        body: SingleChildScrollView(
            child: Form(
          key: resetFormKey,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 34.h,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 40.w),
                  child: Text(
                    'Your password must be different from the previously used password.'.tr(),
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14.sp,
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
                    'Password'.tr(),
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
                    validationFun: provider.nullValidator,
                    onClick: () {},
                    hintText: '*********',
                    isPassword: false,
                    fillColor: Colors.white,
                    fontsize: 14.sp,
                    filled: true,
                    controller: provider.resetPasswordController),
                SizedBox(
                  height: 16.h,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 3.w),
                  child: Text(
                    'Confirm Password'.tr(),
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
                    validationFun: provider.nullValidator,
                    height: 50.h,
                    onClick: () {},
                    hintText: '*********',
                    isPassword: false,
                    fillColor: Colors.white,
                    fontsize: 14.sp,
                    filled: true,
                    controller: provider.ConfirmResetPasswordController),
                SizedBox(
                  height: 54.h,
                ),
                CustomBottom(
                  onTap: () {
                    // if (signupValidate()) {
                    //   // provider.resetPassword(context);
                    // }

                    showDialog(
                            context: context, builder: (_) => SuccessDialog())
                        .then((value) => {
                              RouterHelper.routerHelper
                                  .routingReplacementUntil(SignInScreen())
                            });
                  },
                  title: 'Reset'.tr(),
                ),
              ],
            ),
          ),
        )),
      );
    });
  }
}
