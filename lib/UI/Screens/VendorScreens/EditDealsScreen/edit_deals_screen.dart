import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:twnty2/UI/CustomWidget/custom_text.dart';
import 'package:twnty2/UI/CustomWidget/custom_text_field.dart';
import 'package:twnty2/UI/Utils/constant.dart';

import '../../../CustomWidget/custom_bottom.dart';
import '../../../CustomWidget/slider/defult_form_filed.dart';

class EditDealsScreen extends StatelessWidget {
  TextEditingController nameController = TextEditingController();
  TextEditingController transactionDateController = TextEditingController();
  TextEditingController dealController = TextEditingController();
  TextEditingController priceController = TextEditingController();
  TextEditingController priceMarketController = TextEditingController();
  TextEditingController quantityController = TextEditingController();
  TextEditingController categoryController = TextEditingController();
  TextEditingController sizeController = TextEditingController();
  TextEditingController weightController = TextEditingController();
  TextEditingController shippingController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  TextEditingController termsController = TextEditingController();

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
          'Edit deals',
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
                height: 20.h,
              ),
              Container(
                height: 62.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Color(0xffFCEDEB),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/images/erroricon.png',
                        height: 26.h,
                        width: 26.w,
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      CustomText(
                        'Rejected for violating Islamic law and platform\nregulations',
                        fontSize: 12.sp,
                        color: mainAppColor,
                      ),
                    ],
                  ),
                ),
              ),
              CustomText(
                'Photo',
                fontSize: 12.sp,
              ),
              SizedBox(
                height: 7.h,
              ),
              Row(
                children: [
                  Container(
                    height: 71.h,
                    width: 70.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Image.asset(
                          'assets/images/mycart.png',
                          height: 75,
                          width: 75,
                          fit: BoxFit.cover,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 30, bottom: 35),
                          child: CircleAvatar(
                            radius: 12,
                            backgroundColor: Color(0x90e0dfdf),
                            child: Icon(
                              Icons.delete,
                              size: 18,
                              color: Color(0xff595959),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                  DottedBorder(
                    color: Colors.grey,
                    radius: Radius.circular(5),
                    borderType: BorderType.RRect,
                    child: Container(
                      height: 65.h,
                      width: 65.w,
                      child: Stack(
                        alignment: Alignment.topRight,
                        children: [
                          Center(
                            child: Image.asset(
                              'assets/images/addimage.png',
                              height: 26.h,
                              width: 26.w,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                  DottedBorder(
                    color: Colors.grey,
                    radius: Radius.circular(5),
                    borderType: BorderType.RRect,
                    child: Container(
                      height: 65.h,
                      width: 65.w,
                      child: Stack(
                        alignment: Alignment.topRight,
                        children: [
                          Center(
                            child: Image.asset(
                              'assets/images/addimage.png',
                              height: 26.h,
                              width: 26.w,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                  DottedBorder(
                    color: Colors.grey,
                    radius: Radius.circular(5),
                    borderType: BorderType.RRect,
                    child: Container(
                      height: 65.h,
                      width: 65.w,
                      child: Stack(
                        alignment: Alignment.topRight,
                        children: [
                          Center(
                            child: Image.asset(
                              'assets/images/addimage.png',
                              height: 26.h,
                              width: 26.w,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                children: [
                  CustomText(
                    'Product name',
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
                  fillColor: Color(0xffF4F4F4),
                  fontsize: 14.sp,
                  filled: true,
                  controller: nameController),
              SizedBox(
                height: 20.h,
              ),
              Row(
                children: [
                  CustomText(
                    'The start date of the transaction',
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
                  suffix: Icons.wallet_travel,
                  isPassword: false,
                  fillColor: Color(0xffF4F4F4),
                  fontsize: 14.sp,
                  filled: true,
                  controller: transactionDateController),
              SizedBox(
                height: 20.h,
              ),
              Row(
                children: [
                  CustomText(
                    'The expiry date of the deal',
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
                  suffix: Icons.wallet_travel,
                  fillColor: Color(0xffF4F4F4),
                  fontsize: 14.sp,
                  filled: true,
                  controller: dealController),
              SizedBox(
                height: 20.h,
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
                  fillColor: Color(0xffF4F4F4),
                  fontsize: 14.sp,
                  filled: true,
                  controller: priceController),
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
                  fillColor: Color(0xffF4F4F4),
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
                  fillColor: Color(0xffF4F4F4),
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
                  fillColor: Color(0xffF4F4F4),
                  fontsize: 14.sp,
                  filled: true,
                  controller: categoryController),
              SizedBox(
                height: 10.h,
              ),
              Row(
                children: [
                  CustomText(
                    'Choice of colors',
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
              Row(
                children: [
                  CircleAvatar(
                    radius: 15,
                    backgroundColor: Colors.grey[400],
                    child: Icon(
                      Icons.add,
                      size: 30,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  CircleAvatar(
                    radius: 15,
                    backgroundColor: Colors.red,
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  CircleAvatar(radius: 15, backgroundColor: Colors.pink),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              CustomText(
                'Size',
                fontSize: 12.sp,
              ),
              SizedBox(
                height: 10.h,
              ),
              DefaultTextField(
                  paddingV: 20.h,
                  paddingH: 15.w,
                  maxLines: 1,
                  onClick: () {},
                  hintText: 'All',
                  isPassword: false,
                  suffix: Icons.keyboard_arrow_down_sharp,
                  fillColor: Color(0xffF4F4F4),
                  fontsize: 14.sp,
                  filled: true,
                  controller: sizeController),
              SizedBox(
                height: 20.h,
              ),
              Row(
                children: [
                  CustomText(
                    'Weight',
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
                  fillColor: Color(0xffF4F4F4),
                  fontsize: 14.sp,
                  filled: true,
                  controller: weightController),
              SizedBox(
                height: 20.h,
              ),
              CustomText(
                'Shipping and delivery',
                fontSize: 12.sp,
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
                  fillColor: Color(0xffF4F4F4),
                  fontsize: 14.sp,
                  filled: true,
                  controller: shippingController),
              SizedBox(
                height: 20.h,
              ),
              Row(
                children: [
                  CustomText(
                    'Description',
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
                  maxLines: 3,
                  onClick: () {},
                  hintText: '',
                  isPassword: false,
                  fillColor: Color(0xffF4F4F4),
                  fontsize: 14.sp,
                  filled: true,
                  controller: descriptionController),
              SizedBox(
                height: 20.h,
              ),
              Row(
                children: [
                  CustomText(
                    'Terms of the deal',
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
                  maxLines: 3,
                  onClick: () {},
                  hintText: '',
                  isPassword: false,
                  fillColor: Color(0xffF4F4F4),
                  fontsize: 14.sp,
                  filled: true,
                  controller: termsController),
              SizedBox(
                height: 20.h,
              ),
              Row(
                children: [
                  CustomText(
                    'Branch selection',
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
              Row(
                children: [
                  Image.asset('assets/images/box.png',height: 24.h,width: 24.w,),
                  SizedBox(
                    width: 10.w,
                  ),
                  CustomText('Jeddah branch',),
                  SizedBox(
                    width: 20.w,
                  ),
                  Image.asset('assets/images/box.png',height: 24.h,width: 24.w,),
                  SizedBox(
                    width: 10.w,
                  ),
                  CustomText('Taif branch',),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Row(
                children: [
                  Image.asset('assets/images/box.png',height: 24.h,width: 24.w,),
                  SizedBox(
                    width: 10.w,
                  ),
                  CustomText('Mecca branch',),
                  SizedBox(
                    width: 20.w,
                  ),
                  Image.asset('assets/images/box.png',height: 24.h,width: 24.w,),
                  SizedBox(
                    width: 10.w,
                  ),
                  CustomText('Riyadh Branch',),
                ],
              ),
              SizedBox(
                height: 70.h,
              ),
              Center(
                child: CustomBottom(
                  title: "Preview",
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
