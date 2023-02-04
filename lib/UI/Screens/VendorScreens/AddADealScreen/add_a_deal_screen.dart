import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../CustomWidget/custom_bottom.dart';
import '../../../CustomWidget/custom_text.dart';
import '../../../CustomWidget/slider/defult_form_filed.dart';
import '../../../Utils/constant.dart';

class AddADealScreen extends StatelessWidget {

  TextEditingController nameController = TextEditingController();
  TextEditingController transactionDateController = TextEditingController();
  TextEditingController dealController = TextEditingController();

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
              CustomText(
                'Product name',
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
                  fillColor: Colors.white,
                  fontsize: 14.sp,
                  filled: true,
                  controller: nameController),
              SizedBox(
                height: 20.h,
              ),
              CustomText(
                'The start date of the transaction',
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
                  suffix: Icons.wallet_travel,
                  isPassword: false,
                  fillColor: Colors.white,
                  fontsize: 14.sp,
                  filled: true,
                  controller: transactionDateController),
              SizedBox(
                height: 20.h,
              ),
              CustomText(
                'The expiry date of the deal',
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
                  suffix: Icons.wallet_travel,
                  fillColor: Colors.white,
                  fontsize: 14.sp,
                  filled: true,
                  controller: dealController),
              SizedBox(
                height: 70.h,
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
