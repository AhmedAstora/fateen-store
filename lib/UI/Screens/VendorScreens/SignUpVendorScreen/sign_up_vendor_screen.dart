import 'dart:developer';

import 'package:country_code_picker/country_code_picker.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:twnty2/UI/Screens/SharedScreens/VerificationScreen/verification_screen.dart';

import '../../../../Helper/Providers/auth_provider.dart';
import '../../../../Helper/Router/router.dart';
import '../../../../Helper/SharedPreferance/shared_preferance.dart';
import '../../../CustomWidget/custom_bottom.dart';
import '../../../CustomWidget/custom_text.dart';
import '../../../CustomWidget/custom_text_field.dart';
import '../../../Utils/constant.dart';
import '../../SharedScreens/SignInScreen/sign_in_screen.dart';

class SignUpVendorScreen extends StatelessWidget {
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
                    child: CustomText(
                      "Sign up".tr(),
                      fontWeight: FontWeight.w600,
                      fontSize: 18.sp,
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Text(
                    '${"Business Name".tr()}',
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
                      hintText: 'Business Name'.tr(),
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
                      hintText: 'example@gmail.com',
                      isPassword: false,
                      controller: provider.emailController),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    '${"phone".tr()}',
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
                    '${"Manager name".tr()}',
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
                      hintText: 'Manager name'.tr(),
                      isPassword: false,
                      controller: provider.emailController),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    '${"Manager Phone".tr()}',
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
                    '${"Tax Number".tr()}',
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
                      hintText: 'Tax Number'.tr(),
                      isPassword: false,
                      controller: provider.emailController),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    '${"Tax certificate".tr()}',
                    style: TextStyle(
                        color: greyColor,
                        fontWeight: FontWeight.w500,
                        fontSize: 12.sp),
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  InkWell(
                    onTap: () {
                      provider.PickFile();
                    },
                    child: Container(
                      height: 50,
                      alignment: Alignment.center,
                      child: Row(
                        children: [
                          SizedBox(
                            width: 10.w,
                          ),
                          Container(
                              width: 250.w,
                              child: CustomText(
                                provider.fileController.text == ""
                                    ? "Upload Document".tr()
                                    : provider.fileController.text,
                                maxLines: 1,
                                color: provider.fileController.text == ""
                                    ? Colors.grey
                                    : Colors.black,
                              )),
                          Spacer(),
                          Image.asset(
                            'assets/images/upload-file.png',
                            width: 16.w,
                            height: 16.h,
                          ),
                          SizedBox(
                            width: 15.w,
                          )
                        ],
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                              color: provider.errorFile
                                  ? Colors.red
                                  : Colors.grey.withOpacity(0.6),
                              width: .8.w)),
                    ),
                  ),
                  Visibility(
                      visible: provider.errorFile,
                      child: SizedBox(
                        height: 5.h,
                      )),
                  Visibility(
                    visible: provider.errorFile,
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 10.w),
                      child: Text(
                        'Required Field',
                        style: TextStyle(fontSize: 12.sp, color: Colors.red),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    '${"Commercial number".tr()}',
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
                      hintText: 'Commercial number'.tr(),
                      isPassword: false,
                      controller: provider.emailController),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    '${"Commerical Registeration ".tr()}',
                    style: TextStyle(
                        color: greyColor,
                        fontWeight: FontWeight.w500,
                        fontSize: 12.sp),
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  InkWell(
                    onTap: () {
                      provider.PickFile();
                    },
                    child: Container(
                      height: 50,
                      alignment: Alignment.center,
                      child: Row(
                        children: [
                          SizedBox(
                            width: 10.w,
                          ),
                          Container(
                              width: 250.w,
                              child: CustomText(
                                provider.fileController.text == ""
                                    ? "Upload Document".tr()
                                    : provider.fileController.text,
                                maxLines: 1,
                                color: provider.fileController.text == ""
                                    ? Colors.grey
                                    : Colors.black,
                              )),
                          Spacer(),
                          Image.asset(
                            'assets/images/upload-file.png',
                            width: 16.w,
                            height: 16.h,
                          ),
                          SizedBox(
                            width: 15.w,
                          )
                        ],
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                              color: provider.errorFile
                                  ? Colors.red
                                  : Colors.grey.withOpacity(0.6),
                              width: .8.w)),
                    ),
                  ),
                  Visibility(
                      visible: provider.errorFile,
                      child: SizedBox(
                        height: 5.h,
                      )),
                  Visibility(
                    visible: provider.errorFile,
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 10.w),
                      child: Text(
                        'Required Field'.tr(),
                        style: TextStyle(fontSize: 12.sp, color: Colors.red),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    '${"IBAN number".tr()}',
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
                      hintText: 'IBAN number'.tr(),
                      isPassword: false,
                      controller: provider.emailController),
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
                        Container(
                          width: 20.w,
                          height: 20.h,
                          child: Transform.scale(
                            scaleY: .9,
                            scaleX: .9,
                            child: Checkbox(
                                activeColor: mainAppColor,
                                fillColor:
                                    MaterialStateProperty.resolveWith<Color>(
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
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Text(
                            '${"signUpt2".tr()}  ',
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
                    onTap: () {
                      RouterHelper.routerHelper
                          .routingToSpecificWidgetWithoutPop(
                              VerificationScreen(type: 2,));
                    },
                    title: 'Sign up'.tr(),
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
