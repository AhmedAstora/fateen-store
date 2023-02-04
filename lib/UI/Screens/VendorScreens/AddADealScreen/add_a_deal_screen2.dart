import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../CustomWidget/custom_bottom.dart';
import '../../../CustomWidget/custom_text.dart';
import '../../../CustomWidget/slider/defult_form_filed.dart';
import '../../../Utils/constant.dart';

class AddADealScreen2 extends StatelessWidget {

  TextEditingController priceController = TextEditingController();
  TextEditingController priceMarketController = TextEditingController();
  TextEditingController quantityController = TextEditingController();
  TextEditingController categoryController = TextEditingController();
  TextEditingController priceAfterController = TextEditingController();

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
          'Add a deal',
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
                    'Product price',
                    fontSize: 12.sp,
                  ),
                  Spacer(),
                  CustomText(
                    'Edit',
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
                    'Price after platform commission and tax',
                    fontSize: 12.sp,
                  ),
                  Spacer(),
                  CustomText(
                    'Edit',
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
                  controller: priceAfterController),
              SizedBox(
                height: 20.h,
              ),
              Row(
                children: [
                  CustomText(
                    'Price in the market',
                    fontSize: 12.sp,
                  ),
                  Spacer(),
                  CustomText(
                    'Edit',
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
                    'Quantity',
                    fontSize: 12.sp,
                  ),
                  Spacer(),
                  CustomText(
                    'Edit',
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
                    'Category',
                    fontSize: 12.sp,
                  ),
                  Spacer(),
                  CustomText(
                    'Edit',
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
                  hintText: 'Other',
                  isPassword: false,
                  suffix: Icons.keyboard_arrow_down_sharp,
                  fillColor: Colors.white,
                  fontsize: 14.sp,
                  filled: true,
                  controller: categoryController),
              SizedBox(
                height: 20.h,
              ),
              Row(
                children: [
                  Image.asset('assets/images/box.png',height: 24.h,width: 24.w,),
                  SizedBox(
                    width: 10.w,
                  ),
                  CustomText('Man',),
                  SizedBox(
                    width: 20.w,
                  ),
                  Image.asset('assets/images/box.png',height: 24.h,width: 24.w,),
                  SizedBox(
                    width: 10.w,
                  ),
                  CustomText('Woman',),
                  SizedBox(
                    width: 20.w,
                  ),
                  Image.asset('assets/images/box.png',height: 24.h,width: 24.w,),
                  SizedBox(
                    width: 10.w,
                  ),
                  CustomText('children',),
                ],
              ),
              SizedBox(
                height: 50.h,
              ),
              Center(
                child: CustomBottom(
                  title: "Next",
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
