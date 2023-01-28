import 'dart:developer';

import 'package:country_code_picker/country_code_picker.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../../../../Helper/Providers/auth_provider.dart';
import '../../../../Helper/Router/router.dart';
import '../../../CustomWidget/custom_bottom.dart';
import '../../../CustomWidget/custom_text_field.dart';
import '../../../Utils/constant.dart';
import '../SignInScreen/sign_in_screen.dart';

class SignUpScreen extends StatelessWidget {
  GlobalKey<FormState> signFormKey = GlobalKey<FormState>();

  loginValidate() {
    bool isSuccess = signFormKey.currentState!.validate();
    return isSuccess;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Consumer<AuthProvider>(builder: (context, provider, _) {
      return Form(
        key: signFormKey,
        child: Scaffold(
          body: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 60.h,
                  ),
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
                      "Sign up".tr(),
                      style: TextStyle(
                          fontWeight: FontWeight.w500, fontSize: 18.sp),
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Text(
                    '${"User Name".tr()}',
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
                      hintText: 'User name',
                      isPassword: false,
                      controller: provider.emailController),
                  SizedBox(
                    height: 10.h,
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
                    height: 10.h,
                  ),
                  Text(
                    '${"Number phone".tr()}',
                    style: TextStyle(
                        color: greyColor,
                        fontWeight: FontWeight.w500,
                        fontSize: 12.sp),
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  Container(
                    // height: 50.h,
                    child: TextFormField(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      keyboardType: TextInputType.number,
                      validator: provider.nullValidator,
                      style: TextStyle(color: Colors.black, fontSize: 14.sp),
                      controller: provider.phoneController,
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.transparent,
                          contentPadding:
                              EdgeInsets.symmetric(horizontal: 9, vertical: 6),
                          prefixIcon: Transform.scale(
                            scale: .8,
                            child: Container(
                              height: 50.h,
                              child: CountryCodePicker(
                                favorite: [
                                  '+966',
                                  '+970',
                                  '+971',
                                  '+962',
                                  '+973',
                                  '+218',
                                  '+20',
                                  '+974',
                                  '+968',
                                  '+963',
                                  '+961',
                                  '+964',
                                  '+213',
                                  '+965',
                                  '+216'
                                ],
                                onChanged: (code) {
                                  // provider.code = code.toString();
                                  // print(provider.code);
                                  // provider.notifyListeners();
                                },
                                padding: EdgeInsets.only(
                                  bottom: 5.h,
                                ),
                                // Initial selection and favorite can be one of code ('IT') OR dial_code('+39')
                                initialSelection: '+966',
                                textStyle: TextStyle(
                                    fontSize: 14.sp, color: Colors.black),
                                showFlag: true,

                                comparator: (a, b) =>
                                    b.name!.compareTo(a.name!),
                                //Get the country information relevant to the initial selection
                                onInit: (code) => log(
                                    "on init ${code!.name} ${code.dialCode} ${code.name}"),
                              ),
                            ),
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide(
                                  color: Colors.red.withOpacity(0.6),
                                  width: .8.w)),
                          errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide(
                                  color: Colors.red.withOpacity(0.6),
                                  width: .8.w)),
                          disabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide(
                                  color: Colors.grey.withOpacity(0.6),
                                  width: .8.w)),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide(
                                  color: Colors.grey.withOpacity(0.6),
                                  width: .8.w)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide(
                                  color: Colors.grey.withOpacity(0.6),
                                  width: .8.w)),
                          hintText: '059********',
                          hintStyle: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: Colors.grey,
                              fontSize: 14.sp)),

                      //  onChanged: (value){},
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
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
                  SizedBox(
                    height: 15.h,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Text(
                            '${"By clicking \"Sign up\" I agree that I have read and accepted they".tr()}  ',
                            style: TextStyle(fontSize: 12.sp)),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      InkWell(
                        onTap: () {
                          // RouterHelper.routerHelper
                          //     .routingToSpecificWidgetWithoutPop(
                          //     TermsAndConditionsScreen());
                        },
                        child: Text(
                          "Terms and Conditions".tr(),
                          style:
                              TextStyle(color: mainAppColor, fontSize: 13.sp),
                        ),
                      ),
                      Text('  ${"and".tr()}  ',
                          style: TextStyle(fontSize: 12.sp)),
                      InkWell(
                        onTap: () {
                          // RouterHelper.routerHelper
                          //     .routingToSpecificWidgetWithoutPop(
                          //     PrivacyScreen());
                        },
                        child: Text(
                          '${"Privacy policy".tr()}.',
                          style:
                              TextStyle(color: mainAppColor, fontSize: 13.sp),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 40.h,
                  ),
                  CustomBottom(
                    onTap: () {},
                    title: 'Sign Up',
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Already have an account?".tr(),
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
                              .routingReplacementUntil(SignInScreen());
                        },
                        child: Text(
                          "Sign in.".tr(),
                          style: TextStyle(
                              color: mainAppColor,
                              fontWeight: FontWeight.w600,
                              fontSize: 12.sp),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 70.h,
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
