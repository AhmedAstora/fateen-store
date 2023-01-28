import 'dart:developer';

import 'package:country_code_picker/country_code_picker.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:twnty2/Helper/Providers/app_provider.dart';
import 'package:twnty2/UI/CustomWidget/custom_bottom.dart';

import '../../../CustomWidget/back_appBar_widget.dart';
import '../../../CustomWidget/custom_image_network.dart';
import '../../../CustomWidget/custom_text.dart';
import '../../../CustomWidget/custom_text_field.dart';
import '../../../Utils/constant.dart';

class EditProfileScreen extends StatelessWidget {
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
            'Edit Profile',
            fontSize: 16.sp,
            color: Colors.black,
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 16.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20.h,
                ),
                Center(
                  child: Container(
                    alignment: Alignment.center,
                    width: 100.r,
                    height: 100.r,
                    child: Stack(
                      children: [
                        provider.file != null
                            ? Image.file(
                                provider.file!,
                                width: 90.r,
                                height: 90.r,
                                fit: BoxFit.cover,
                              )
                            : CustomImageNetwork(
                                image:
                                    "https://images.unsplash.com/photo-1492562080023-ab3db95bfbce?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2896&q=80",
                                width: 90.r,
                                height: 90.r,
                                radius: 500,
                                fit: BoxFit.cover,
                              ),
                        Visibility(
                            visible: true,
                            child: Align(
                              alignment: Alignment.bottomRight,
                              child: Container(
                                padding: EdgeInsets.all(5),
                                width: 25.r,
                                height: 25.r,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(100),
                                ),
                                margin: EdgeInsets.symmetric(
                                    horizontal: 6.w, vertical: 6.h),
                                child: Image.asset(
                                  'assets/images/camera_profile.png',
                                  width: 20.w,
                                  height: 20.h,
                                  color: Colors.black,
                                ),
                              ),
                            )),
                      ],
                    ),
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

                              comparator: (a, b) => b.name!.compareTo(a.name!),
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
                  height: 70.h,
                ),
                CustomBottom(
                  title: 'Edit',
                  height: 45.h,
                )
              ],
            ),
          ),
        ),
      );
    });
  }
}
