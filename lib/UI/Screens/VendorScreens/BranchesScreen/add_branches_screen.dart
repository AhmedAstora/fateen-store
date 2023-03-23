import 'dart:developer';

import 'package:country_code_picker/country_code_picker.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:twnty2/UI/CustomWidget/custom_bottom.dart';
import 'package:twnty2/UI/CustomWidget/custom_branch_field.dart';
import 'package:twnty2/UI/CustomWidget/custom_text_field.dart';
import 'package:twnty2/UI/Screens/VendorScreens/BranchesScreen/widget/container_widget.dart';
import 'package:twnty2/UI/Screens/VendorScreens/BranchesScreen/widget/switsh_widget.dart';
import 'package:twnty2/UI/Screens/VendorScreens/BranchesScreen/widget/text_field_widget.dart';

import '../../../CustomWidget/back_appBar_widget.dart';
import '../../../CustomWidget/custom_search_field.dart';
import '../../../CustomWidget/custom_text.dart';
import '../../../CustomWidget/slider/defult_form_filed.dart';
import '../../UserScreens/ProfileScreen/widget/delete_profile_dialog.dart';

class AddBranchesScreen extends StatelessWidget {
  TextEditingController filterController = TextEditingController();
  TextEditingController typeController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController countryController = TextEditingController();
  TextEditingController priceController = TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController zipcodeController = TextEditingController();
  TextEditingController streetController = TextEditingController();
  TextEditingController zoneController = TextEditingController();
  TextEditingController zone1Controller = TextEditingController();
  TextEditingController branchDetailsController = TextEditingController();
  TextEditingController branchDetails1Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        leading: BackAppBarWidget(),
        centerTitle: true,
        title: CustomText(
          'Branches'.tr(),
          fontSize: 16.sp,
          color: Colors.black,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 208.h,
                width: MediaQuery.of(context).size.width,
                child: Stack(
                  children: [
                    Image.asset(
                      'assets/images/map1.png',
                      fit: BoxFit.cover,
                      height: 500,
                      width: 500,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 16.h,horizontal: 3.w),
                      child: Row(
                        children: [
                          Expanded(
                              child: CustomSearchField(
                                  onClick: () {},
                                  hintText: 'Search for a warehouse or branch',
                                  fontsize: 12.sp,
                                  filled: true,
                                  fillColor: Colors.white,
                                  isPassword: false,
                                  controller: filterController)),
                          SizedBox(
                            width: 10.w,
                          ),
                          Container(
                            height: 39.h,
                            width: 39.w,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Image.asset(
                              'assets/images/icon6.png',
                              height: 24.h,
                              width: 24.w,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              CustomText(
                'Type',
                fontSize: 12.sp,
              ),
              SizedBox(
                height: 10.h,
              ),
              TextFieldWidget(
                controller: typeController,
                suffix: Icon(Icons.keyboard_arrow_down),
              ),
              SizedBox(
                height: 20.h,
              ),
              CustomText(
                'Name',
                fontSize: 12.sp,
              ),
              SizedBox(
                height: 10.h,
              ),
              TextFieldWidget(
                controller: nameController,
              ),
              SizedBox(
                height: 20.h,
              ),
              CustomText(
                'Country',
                fontSize: 12.sp,
              ),
              SizedBox(
                height: 10.h,
              ),
              TextFieldWidget(
                controller: countryController,
                suffix: Icon(Icons.keyboard_arrow_down),
              ),
              SizedBox(
                height: 20.h,
              ),
              CustomText(
                'City',
                fontSize: 12.sp,
              ),
              SizedBox(
                height: 10.h,
              ),
              TextFieldWidget(
                controller: cityController,
                suffix: Icon(Icons.keyboard_arrow_down),
              ),
              SizedBox(
                height: 20.h,
              ),
              CustomText(
                'Address',
                fontSize: 12.sp,
              ),
              SizedBox(
                height: 10.h,
              ),
              TextFieldWidget(
                controller: addressController,
              ),
              SizedBox(
                height: 20.h,
              ),
              CustomText(
                'zip code',
                fontSize: 12.sp,
              ),
              SizedBox(
                height: 10.h,
              ),
              TextFieldWidget(
                controller: zipcodeController,
              ),
              SizedBox(
                height: 20.h,
              ),
              CustomText(
                'Street',
                fontSize: 12.sp,
              ),
              SizedBox(
                height: 10.h,
              ),
              TextFieldWidget(
                controller: streetController,
              ),
              SizedBox(
                height: 20.h,
              ),
              CustomText(
                'Zone',
                fontSize: 12.sp,
              ),
              SizedBox(
                height: 10.h,
              ),
              TextFieldWidget(
                controller: zoneController,
              ),
              SizedBox(
                height: 20.h,
              ),
              CustomText(
                'Zone',
                fontSize: 12.sp,
              ),
              SizedBox(
                height: 10.h,
              ),
              TextFieldWidget(
                controller: zone1Controller,
              ),
              SizedBox(
                height: 20.h,
              ),
              CustomText(
                'Branch contact details',
                fontSize: 12.sp,
                fontWeight: FontWeight.w500,
              ),
              SizedBox(
                height: 10.h,
              ),
              CustomBranchField(
                onClick: () {},
                hintText: '59********',
                isPassword: false,
                controller: branchDetailsController,

                filled: true,
                fillColor: Colors.white,
                prefix: Row(
                  children: [
                    Icon(Icons.keyboard_arrow_down),
                    SizedBox(
                      width: 5.w,
                    ),
                    CountryCodePicker(
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
                      textStyle:
                          TextStyle(fontSize: 14.sp, color: Colors.black),
                      showFlag: true,

                      comparator: (a, b) => b.name!.compareTo(a.name!),
                      //Get the country information relevant to the initial selection
                      onInit: (code) => log(
                          "on init ${code!.name} ${code.dialCode} ${code.name}"),
                    ),
                  ],
                ),
                suffix: Row(
                  children: [
                    Container(
                      height: 60,
                      width: 1,
                      color: Colors.grey.shade400,
                    ),
                    SizedBox(
                      width: 15.w,
                    ),
                    Image.asset('assets/images/phone.png',height: 17.h,width: 17.w,color: Colors.grey,),
                  ],
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              CustomBranchField(
                onClick: () {},
                hintText: '59********',
                isPassword: false,
                controller: branchDetailsController,

                filled: true,
                fillColor: Colors.white,
                prefix: Row(
                  children: [
                    Icon(Icons.keyboard_arrow_down),
                    SizedBox(
                      width: 5.w,
                    ),
                    CountryCodePicker(
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
                      textStyle:
                          TextStyle(fontSize: 14.sp, color: Colors.black),
                      showFlag: true,

                      comparator: (a, b) => b.name!.compareTo(a.name!),
                      //Get the country information relevant to the initial selection
                      onInit: (code) => log(
                          "on init ${code!.name} ${code.dialCode} ${code.name}"),
                    ),
                  ],
                ),
                suffix: Row(
                  children: [
                    Container(
                      height: 60,
                      width: 1,
                      color: Colors.grey.shade400,
                    ),
                    SizedBox(
                      width: 15.w,
                    ),
                    Image.asset('assets/images/whatsappicon.png',height: 17.h,width: 17.w,color: Colors.grey,),
                  ],
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              CustomText(
                'Working days and hours',
                fontSize: 12.sp,
                fontWeight: FontWeight.w500,
              ),
              SizedBox(
                height: 20.h,
              ),
              SwitshWidget('Saturday'),
              SizedBox(
                height: 10.h,
              ),
              ContainerWidget('From','To'),
              SizedBox(
                height: 20.h,
              ),
              SwitshWidget('Sunday'),
              SizedBox(
                height: 10.h,
              ),
              ContainerWidget('From','To'),
              SizedBox(
                height: 20.h,
              ),
              SwitshWidget('Monday'),
              SizedBox(
                height: 10.h,
              ),
              ContainerWidget('From','To'),
              SizedBox(
                height: 20.h,
              ),
              SwitshWidget('Tuesday'),
              SizedBox(
                height: 10.h,
              ),
              ContainerWidget('From','To'),
              SizedBox(
                height: 20.h,
              ),
              SwitshWidget('Wednesday'),
              SizedBox(
                height: 10.h,
              ),
              ContainerWidget('From','To'),
              SizedBox(
                height: 20.h,
              ),
              SwitshWidget('Thursday'),
              SizedBox(
                height: 10.h,
              ),
              ContainerWidget('From','To'),
              SizedBox(
                height: 20.h,
              ),
              SwitshWidget('Friday'),
              SizedBox(
                height: 10.h,
              ),
              ContainerWidget('From','To'),
              SizedBox(
                height: 70.h,
              ),
              Center(
                child: CustomBottom(
                  height:45.h ,
                  width: 271.w,
                  borderRadius: 8,
                  title: 'Edit',
                  onTap: () {},
                ),
              ),
              SizedBox(
                height: 70.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
