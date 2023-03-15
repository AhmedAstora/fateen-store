import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../CustomWidget/back_appBar_widget.dart';
import '../../../CustomWidget/custom_bottom.dart';
import '../../../CustomWidget/custom_text.dart';
import '../../../Utils/constant.dart';

class RequestsUserScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        leading: BackAppBarWidget(),
        title: CustomText(
          'Requests'.tr(),
          fontSize: 16.sp,
          color: Colors.black,
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                'order number- nSUD525632',
                fontWeight: FontWeight.w500,
              ),
              CustomText(
                'Order placed on 12/05/2022',
                fontSize: 10.sp,
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
                          child: CustomText(
                            'Shipping Address'.tr(),
                            color: Color(0xff2D2D53),
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
                          child: CustomText(
                            'Mobile number'.tr(),
                            fontWeight: FontWeight.w500,
                            color: Color(0xff2D2D53),
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
                            '00972597128785',
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
                height: 15.h,
              ),
              Row(
                children: [
                  Image.asset(
                    'assets/images/clipboard-list.png',
                    height: 17.h,
                    width: 17.w,
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  CustomText(
                    'NSAE70035784546-S1',
                    fontWeight: FontWeight.w500,
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Row(
                children: [
                  Image.asset(
                    'assets/images/file-invoice-dollar.png',
                    height: 17.h,
                    width: 17.w,
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  CustomText(
                    'Tax bills',
                    fontSize: 12.sp,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  Image.asset(
                    'assets/images/file-invoice-dollar.png',
                    height: 17.h,
                    width: 17.w,
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  CustomText(
                    'Order summary',
                    fontSize: 12.sp,
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Column (
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 5.h,
                  ),
                  Container(
                    height: 125.h,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade200),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              'assets/images/requests.png',
                              fit: BoxFit.cover,
                              height: 108.h,
                              width: 108.w,
                            ),
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 10.h,
                                ),
                                CustomText(
                                  'Imported cotton clothing set'.tr(),
                                  fontWeight: FontWeight.w700,
                                  fontSize: 12.0.sp,
                                ),
                                Row(
                                  children: [
                                    CustomText(
                                      'SAR 54.43',
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12.0.sp,
                                      color: mainAppColor,
                                    ),
                                    SizedBox(
                                      width: 5.w,
                                    ),
                                    CustomText(
                                      'SAR54.43',
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12.0.sp,
                                      color: Color(0xff929292),
                                    ),
                                  ],
                                ),
                                CustomText(
                                  'Summer cotton blouse absorbs sweat and makes you feel comfortable'.tr(),
                                  color: Color(0xff929292),
                                  fontSize: 12.0.sp,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Row(
                children: [
                  Image.asset(
                    'assets/images/clipboard-list.png',
                    height: 17.h,
                    width: 17.w,
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  CustomText(
                    'NSAE70035784546-S1',
                    fontWeight: FontWeight.w500,
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Row(
                children: [
                  Image.asset(
                    'assets/images/file-invoice-dollar.png',
                    height: 17.h,
                    width: 17.w,
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  CustomText(
                    'Tax bills',
                    fontSize: 12.sp,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  Image.asset(
                    'assets/images/file-invoice-dollar.png',
                    height: 17.h,
                    width: 17.w,
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  CustomText(
                    'Order summary',
                    fontSize: 12.sp,
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 5.h,
                  ),
                  Container(
                    height: 125.h,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade200),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              'assets/images/requests.png',
                              fit: BoxFit.cover,
                              height: 108.h,
                              width: 108.w,
                            ),
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 10.h,
                                ),
                                CustomText(
                                  'Imported cotton clothing set'.tr(),
                                  fontWeight: FontWeight.w700,
                                  fontSize: 12.0.sp,
                                ),
                                Row(
                                  children: [
                                    CustomText(
                                      'SAR 54.43',
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12.0.sp,
                                      color: mainAppColor,
                                    ),
                                    SizedBox(
                                      width: 5.w,
                                    ),
                                    CustomText(
                                      'SAR54.43',
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12.0.sp,
                                      color: Color(0xff929292),
                                    ),
                                  ],
                                ),
                                CustomText(
                                  'Summer cotton blouse absorbs sweat and makes you feel comfortable'.tr(),
                                  color: Color(0xff929292),
                                  fontSize: 12.0.sp,
                                ),
                              ],
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
              Container(
                height: 110.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.1),
                      spreadRadius: 4,
                      blurRadius: 5,
                      offset: Offset(2, 1), // changes position of shadow
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        'Shipping and Payment'.tr(),
                        fontSize: 16.sp,
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomText(
                            'Location :'.tr(),
                            fontWeight: FontWeight.w500,
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          CustomText(
                            '(870) 285-3677 825 Saudi Arabia,\n The city of Jeddah(AR), 71958',
                            color: Colors.grey[500],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              CustomText(
                'Payment - mada network'.tr(),
              ),
              Container(
                height: 1,
                width: MediaQuery.of(context).size.width,
                color: Colors.grey[200],
              ),
              SizedBox(
                height: 30.h,
              ),
              Column(
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
                      CustomText('Delivery price'.tr(),
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
                      CustomText(
                        'Total Price'.tr(),
                        fontWeight: FontWeight.w600,
                        fontSize: 16.sp,
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
                  SizedBox(
                    height: 90.h,
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
