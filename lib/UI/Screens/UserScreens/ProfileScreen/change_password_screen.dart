import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:twnty2/Helper/Providers/app_provider.dart';
import 'package:twnty2/UI/CustomWidget/custom_bottom.dart';

import '../../../CustomWidget/back_appBar_widget.dart';
import '../../../CustomWidget/custom_text.dart';
import '../../../CustomWidget/custom_text_field.dart';

class ChangePasswordScreen extends StatelessWidget {
  GlobalKey<FormState> changePasswordKey = GlobalKey<FormState>();

  signupValidate() {
    bool isSuccess = changePasswordKey.currentState!.validate();
    return isSuccess;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Consumer<AppProvider>(builder: (context, provider, _) {
      return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.white,
          leading: BackAppBarWidget(),
          title: CustomText(
            'Change password'.tr(),
            fontSize: 16.sp,
            color: Colors.black,
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
            child: Form(
          key: changePasswordKey,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 24.h,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 3.w),
                  child: Text(
                    'Current password'.tr(),
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
                    hintText: '**********',
                    isPassword: true,
                    fillColor: Colors.white,
                    fontsize: 14.sp,
                    filled: true,
                    controller: provider.currentPasswordController),
                SizedBox(
                  height: 24.h,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 3.w),
                  child: Text(
                    'New password'.tr(),
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
                    hintText: '**********',
                    isPassword: true,
                    fillColor: Colors.white,
                    fontsize: 14.sp,
                    filled: true,
                    controller: provider.newPasswordController),
                SizedBox(
                  height: 24.h,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 3.w),
                  child: Text(
                    'Confirm password'.tr(),
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
                    hintText: '**********',
                    isPassword: true,
                    fillColor: Colors.white,
                    fontsize: 14.sp,
                    filled: true,
                    controller: provider.confirmNewPasswordController),
                SizedBox(
                  height: 289.h,
                ),
                CustomBottom(
                  title: "Save".tr(),
                  onTap: () {
                    if (signupValidate()) {
                      // provider.changePasswrod(context);
                    }
                  },
                ),
              ],
            ),
          ),
        )),
      );
    });
  }
}
