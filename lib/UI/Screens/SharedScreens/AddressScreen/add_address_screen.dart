import 'dart:developer';

import 'package:country_code_picker/country_code_picker.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../CustomWidget/back_appBar_widget.dart';
import '../../../CustomWidget/custom_bottom.dart';
import '../../../CustomWidget/custom_text.dart';
import '../../../CustomWidget/custom_text_field.dart';
import '../../../Utils/constant.dart';

import '../../UserScreens/CartScreen/widget/cart_buy_bottom_sheet.dart';


class AddAddressScreen extends StatelessWidget {
  TextEditingController StoteController = TextEditingController();
  TextEditingController RegionController = TextEditingController();
  TextEditingController NeighborhoodController = TextEditingController();
  TextEditingController HouseNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        leading: BackAppBarWidget(),
        title: CustomText(
          'Add address',
          fontSize: 16.sp,
          color: Colors.black,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Image.asset(
              'assets/images/addressimage.png',
              width: 24.w,
            ),
          ),
        ],
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '${"Stote".tr()}',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 12.sp),
              ),
              SizedBox(
                height: 8.h,
              ),
              CustomTextField(
                controller: StoteController,
                onClick: () {},
                fontsize: 16.sp,
                hintText: 'Saudi Arabia',
                isPassword: false,
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(
                '${"Region".tr()}',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 12.sp),
              ),
              SizedBox(
                height: 8.h,
              ),
              CustomTextField(
                  onClick: () {},
                  fontsize: 16.sp,
                  hintText: 'Dammam',
                  isPassword: false,
                  controller: RegionController),
              SizedBox(
                height: 10.h,
              ),
              Text(
                '${"Neighborhood".tr()}',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 12.sp),
              ),
              SizedBox(
                height: 8.h,
              ),
              CustomTextField(
                  onClick: () {},
                  fontsize: 16.sp,
                  hintText: 'Uhud neighborhood',
                  isPassword: false,
                  controller: RegionController),
              SizedBox(
                height: 10.h,
              ),
              Text(
                '${"House number".tr()}',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 12.sp),
              ),
              SizedBox(
                height: 8.h,
              ),
              CustomTextField(
                  onClick: () {},
                  fontsize: 16.sp,
                  hintText: '5255',
                  isPassword: false,
                  controller: RegionController),
              SizedBox(
                height: 10.h,
              ),
              Row(
                children: [
                  Icon(
                    Icons.check_box_outline_blank_rounded,
                    color: Colors.grey[400],
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  CustomText('Set as default',fontSize: 12.0.sp,)
                ],
              ),
              SizedBox(
                height: 80.h,
              ),
              Center(
                child: CustomBottom(
                  onTap: () {
                    showModalBottomSheet(
                        isScrollControlled: true,
                        context: context,
                        builder: (_) => CartBuyBottomSheet());
                  },
                  height: 45.0.sp,
                  width: 271.0.sp,
                  backgroundColor: mainAppColor,
                  title: 'Save',
                  borderRadius: 10,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
