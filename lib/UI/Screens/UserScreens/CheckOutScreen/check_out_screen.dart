import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:twnty2/UI/CustomWidget/back_appBar_widget.dart';
import 'package:twnty2/UI/CustomWidget/custom_text.dart';
import 'package:twnty2/UI/Screens/UserScreens/CheckOutScreen/successfully_show_dialog_widget.dart';

import '../../../CustomWidget/custom_bottom.dart';
import '../../../Utils/constant.dart';
import 'discount_show_dialog_widget.dart';

class CheckOutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        leading: BackAppBarWidget(),
        title: CustomText(
          'Checkout'.tr(),
          fontSize: 16.sp,
          color: Colors.black,
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.info,
                        color: Color(0xffFAFF1D),
                      ),
                      SizedBox(
                        width: 10.0.w,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomText(
                            'Note'.tr(),
                            fontSize: 16.sp,
                            color: Color(0xff2D2D53),
                          ),
                          CustomText(
                            'checkT1'.tr(),
                            fontSize: 12.sp,
                            color: Color(0xff2D2D53),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Color(0xffFAFF1D),
                    )),
              ),
              SizedBox(
                height: 10.h,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Row(
                            children: [
                              CustomText(
                                'Shipping Address'.tr(),
                                fontSize: 16.sp,
                                color: Color(0xff2D2D53),
                              ),
                              SizedBox(
                                width: 150.w,
                              ),
                              CustomText(
                                'Change'.tr(),
                                color: mainAppColor,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Container(
                          height: 0.5.h,
                          width: 334.5.w,
                          color: Colors.grey[400],
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: CustomText(
                            '(870) 285-3677 825 Saudi Arabia, The city of\n Jeddah(AR), 71958',
                            fontSize: 14.sp,
                            color: Colors.grey[500],
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                      ],
                    )
                  ],
                ),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Color(0xffE8E9ED),
                    )),
              ),
              SizedBox(
                height: 10.h,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Row(
                            children: [
                              CustomText(
                                'Payment method'.tr(),
                                fontSize: 16.sp,
                                color: Color(0xff2D2D53),
                              ),
                              SizedBox(
                                width: 150.w,
                              ),
                              CustomText(
                                'Change'.tr(),
                                color: mainAppColor,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Container(
                          height: 0.5.h,
                          width: 334.5.w,
                          color: Colors.grey[400],
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Row(
                            children: [
                              Image.asset(
                                'assets/images/mastercard.png',
                                height: 21.h,
                                width: 35.w,
                              ),
                              SizedBox(
                                width: 10.w,
                              ),
                              CustomText('****  ****  ****  2345')
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                      ],
                    )
                  ],
                ),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Color(0xffE8E9ED),
                    )),
              ),
              SizedBox(
                height: 24.h,
              ),
              Container(
                height: 48.h,
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0x1a1d2348)),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    SizedBox(
                      width: 10.w,
                    ),
                    Image.asset(
                      'assets/images/Discount.png',
                      height: 20.h,
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    CustomText(
                      'Apply voucher for Discount'.tr(),
                      fontSize: 16.0.sp,
                      color: Color(0xff1D2348),
                    ),
                    Spacer(),
                    Icon(
                      Icons.keyboard_arrow_right,
                      size: 30.0,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Row(
                children: [
                  Icon(
                    Icons.check,
                    color: Color(0xff00D27F),
                  ),
                  CustomText(
                    'Zain code has been added successfully'.tr(),
                    fontSize: 10.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ],
              ),
              SizedBox(
                height: 30.h,
              ),
              Container(
                decoration: BoxDecoration(),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    // mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        children: [
                          CustomText('items (2)'.tr(), color: Color(0xff999BA9)),
                          Spacer(),
                          CustomText(
                            '\$80.00',
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          CustomText('Discount'.tr(), color: Color(0xff999BA9)),
                          Spacer(),
                          CustomText(
                            '\$7.00',
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      Container(
                        child: Row(
                          children: List.generate(
                              80 ~/ 1,
                              (index) => Expanded(
                                    child: Container(
                                      color: index % 2 == 0
                                          ? Colors.transparent
                                          : Colors.grey.withOpacity(.6),
                                      height: .6,
                                    ),
                                  )),
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Row(
                        children: [
                          CustomText('Shipping fee'.tr(), color: Color(0xff999BA9)),
                          Spacer(),
                          CustomText(
                            '\$7.00',
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Container(
                        child: Row(
                          children: List.generate(
                              80 ~/ 1,
                              (index) => Expanded(
                                    child: Container(
                                      color: index % 2 == 0
                                          ? Colors.transparent
                                          : Colors.grey.withOpacity(.6),
                                      height: .6,
                                    ),
                                  )),
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Row(
                        children: [
                          CustomText('Delivery Charge'.tr(),
                              color: Color(0xff999BA9)),
                          Spacer(),
                          CustomText(
                            '\$7.00',
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Row(
                        children: [
                          CustomText(
                            'Total Price'.tr(),
                            fontWeight: FontWeight.w600,
                            fontSize: 16.sp,
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          CustomText(
                            'Taxes included'.tr(),
                            fontSize: 10.sp,
                          ),
                          Spacer(),
                          CustomText(
                            '\$73.00',
                            fontWeight: FontWeight.w600,
                            color: mainAppColor,
                            fontSize: 16.0.sp,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 40.h,
              ),
              Center(
                child: CustomBottom(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (_) => SuccessfullyCodeDialogWidget());
                  },
                  height: 45.0.sp,
                  width: 271.0.sp,
                  backgroundColor: mainAppColor,
                  title: 'Checkout'.tr(),
                  borderRadius: 10,
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
