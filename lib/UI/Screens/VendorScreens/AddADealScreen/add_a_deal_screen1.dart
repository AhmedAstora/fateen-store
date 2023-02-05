import 'package:dotted_border/dotted_border.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../CustomWidget/custom_bottom.dart';
import '../../../CustomWidget/custom_text.dart';
import '../../../CustomWidget/slider/defult_form_filed.dart';
import '../../../Utils/constant.dart';

class AddADealScreen1 extends StatelessWidget {

  TextEditingController priceController = TextEditingController();
  TextEditingController priceMarketController = TextEditingController();
  TextEditingController quantityController = TextEditingController();
  TextEditingController categoryController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: Icon(
          Icons.keyboard_arrow_left_rounded,
          size: 30,
          color: Colors.black,
        ),
        title: CustomText(
          'Add a deal'.tr(),
          fontSize: 16.sp,
          color: Colors.black,
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 60.h,
              ),
              Row(
                children: [
                  CustomText(
                    'Product price'.tr(),
                    fontSize: 12.sp,
                  ),
                  Spacer(),
                  CustomText(
                    'Edit'.tr(),
                    fontSize: 12.sp,
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              DefaultTextField(
                  paddingV: 20.h,
                  paddingH: 15.w,
                  maxLines: 1,
                  onClick: () {},
                  hintText: '',
                  isPassword: false,
                  fillColor: Colors.white,
                  fontsize: 14.sp,
                  filled: true,
                  controller: priceController),
              SizedBox(
                height: 20.h,
              ),
              Row(
                children: [
                  CustomText(
                    'Price in the market'.tr(),
                    fontSize: 12.sp,
                  ),
                  Spacer(),
                  CustomText(
                    'Edit'.tr(),
                    fontSize: 12.sp,
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              DefaultTextField(
                  paddingV: 20.h,
                  paddingH: 15.w,
                  maxLines: 1,
                  onClick: () {},
                  hintText: '',
                  isPassword: false,
                  fillColor: Colors.white,
                  fontsize: 14.sp,
                  filled: true,
                  controller: priceMarketController),
              SizedBox(
                height: 20.h,
              ),
              Row(
                children: [
                  CustomText(
                    'Quantity'.tr(),
                    fontSize: 12.sp,
                  ),
                  Spacer(),
                  CustomText(
                    'Edit'.tr(),
                    fontSize: 12.sp,
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              DefaultTextField(
                  paddingV: 20.h,
                  paddingH: 15.w,
                  maxLines: 1,
                  onClick: () {},
                  hintText: '',
                  isPassword: false,
                  fillColor: Colors.white,
                  fontsize: 14.sp,
                  filled: true,
                  controller: quantityController),
              SizedBox(
                height: 20.h,
              ),
              Row(
                children: [
                  CustomText(
                    'Category'.tr(),
                    fontSize: 12.sp,
                  ),
                  Spacer(),
                  CustomText(
                    'Edit'.tr(),
                    fontSize: 12.sp,
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              DefaultTextField(
                  paddingV: 20.h,
                  paddingH: 15.w,
                  maxLines: 1,
                  onClick: () {},
                  hintText: 'Other'.tr(),
                  isPassword: false,
                  suffix: Icon(Icons.keyboard_arrow_down_sharp),
                  fillColor: Colors.white,
                  fontsize: 14.sp,
                  filled: true,
                  controller: categoryController),
              SizedBox(
                height: 70.h,
              ),
              Center(
                child: CustomBottom(
                  title: "Next".tr(),
                  height: 48.h,
                  width: 309.w,
                  onTap: () {},
                ),
              ),
              SizedBox(
                height: 120.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
