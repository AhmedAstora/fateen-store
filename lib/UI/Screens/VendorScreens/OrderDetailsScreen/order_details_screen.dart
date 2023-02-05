import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../CustomWidget/back_appBar_widget.dart';
import '../../../CustomWidget/custom_text.dart';
import '../../../Utils/constant.dart';

class OrderDetailsScreen extends StatelessWidget {
  List<Color> colors = [
    Color(0xff44B66B),
    Color(0xff3479D1),
    Color(0xffCF3030),
    Color(0xffEDBE46),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        leading: BackAppBarWidget(),
        title: CustomText(
          'Order details'.tr(),
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
                height: 83.h,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.grey, width: 0.2)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 10.w,
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          'assets/images/requestssiller.png',
                          fit: BoxFit.cover,
                          height: 66.h,
                          width: 66.w,
                        ),
                      ),
                      SizedBox(
                        width: 15.w,
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomText(
                                'T-shirt, Turkish cotton material'.tr(),
                                fontSize: 10.0.sp,
                              ),
                              Row(
                                children: [
                                  CustomText(
                                    'Quantity:'.tr(),
                                    fontSize: 10.0.sp,
                                  ),
                                  SizedBox(
                                    width: 30.w,
                                  ),
                                  CustomText(
                                    '50',
                                    fontSize: 10.0.sp,
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  CustomText(
                                    'Total price:'.tr(),
                                    fontSize: 10.0.sp,
                                  ),
                                  SizedBox(
                                    width: 20.w,
                                  ),
                                  CustomText(
                                    '520&',
                                    fontSize: 12.0.sp,
                                    color: mainAppColor,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              CustomText(
                'Order details'.tr(),
                fontSize: 16.sp,
              ),
              SizedBox(
                height: 12.h,
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0x80999ba9)),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    // mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        children: [
                          CustomText(
                            'Receipt Number:'.tr(),
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w500,
                          ),
                          SizedBox(
                            width: 45.w,
                          ),
                          CustomText(
                            '#2204',
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 12.h,
                      ),
                      Container(
                        child: Row(
                          children: List.generate(
                              80 ~/ 1,
                              (index) => Expanded(
                                    child: Container(
                                      color: index % 2 == 0
                                          ? Colors.transparent
                                          : Colors.grey.withOpacity(.99),
                                      height: .9,
                                    ),
                                  )),
                        ),
                      ),
                      SizedBox(
                        height: 12.h,
                      ),
                      Row(
                        children: [
                          CustomText(
                            'Size :'.tr(),
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w500,
                          ),
                          SizedBox(
                            width: 102.w,
                          ),
                          CustomText(
                            'S - M - L - XL'.tr(),
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 12.h,
                      ),
                      Container(
                        child: Row(
                          children: List.generate(
                              80 ~/ 1,
                              (index) => Expanded(
                                    child: Container(
                                      color: index % 2 == 0
                                          ? Colors.transparent
                                          : Colors.grey.withOpacity(.99),
                                      height: .9,
                                    ),
                                  )),
                        ),
                      ),
                      SizedBox(
                        height: 12.h,
                      ),
                      Row(
                        children: [
                          CustomText(
                            'Color:'.tr(),
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w500,
                          ),
                          SizedBox(
                            width: 90.w,
                          ),
                          Expanded(
                            child: Container(
                                height: (4 / 2) * 13.h,
                                child: GridView.builder(
                                  padding: EdgeInsets.only(top: 5),
                                  itemCount: 4,
                                  physics: NeverScrollableScrollPhysics(),
                                  gridDelegate:
                                      SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 4,
                                    mainAxisExtent: 17.h,
                                    crossAxisSpacing: 1.0,
                                    mainAxisSpacing: 1.0,
                                  ),
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    return CircleAvatar(
                                      backgroundColor: (colors[index]),
                                    );
                                  },
                                )),
                          ),
                          SizedBox(
                            width: 75.w,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 12.h,
                      ),
                      Container(
                        child: Row(
                          children: List.generate(
                              80 ~/ 1,
                              (index) => Expanded(
                                    child: Container(
                                      color: index % 2 == 0
                                          ? Colors.transparent
                                          : Colors.grey.withOpacity(.99),
                                      height: .9,
                                    ),
                                  )),
                        ),
                      ),
                      SizedBox(
                        height: 12.h,
                      ),
                      Row(
                        children: [
                          CustomText(
                            'The date of purchase:'.tr(),
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w500,
                          ),
                          SizedBox(
                            width: 15.w,
                          ),
                          CustomText(
                            '20-12-2022',
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 12.h,
                      ),
                      Container(
                        child: Row(
                          children: List.generate(
                              80 ~/ 1,
                              (index) => Expanded(
                                    child: Container(
                                      color: index % 2 == 0
                                          ? Colors.transparent
                                          : Colors.grey.withOpacity(.99),
                                      height: .9,
                                    ),
                                  )),
                        ),
                      ),
                      SizedBox(
                        height: 12.h,
                      ),
                      Row(
                        children: [
                          CustomText(
                            'Status:'.tr(),
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w500,
                          ),
                          SizedBox(
                            width: 87.w,
                          ),
                          CustomText(
                            'Pending'.tr(),
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 12.h,
              ),
              CustomText(
                'Buyer data'.tr(),
                fontSize: 16.sp,
              ),
              SizedBox(
                height: 12.h,
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0x80999ba9)),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    // mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          right: 30,
                        ),
                        child: Row(
                          children: [
                            CustomText(
                              'User name:'.tr(),
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w500,
                            ),
                            Spacer(),
                            CustomText(
                              'Mahmoud quaider'.tr(),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 12.h,
                      ),
                      Container(
                        child: Row(
                          children: List.generate(
                              80 ~/ 1,
                              (index) => Expanded(
                                    child: Container(
                                      color: index % 2 == 0
                                          ? Colors.transparent
                                          : Colors.grey.withOpacity(.99),
                                      height: .9,
                                    ),
                                  )),
                        ),
                      ),
                      SizedBox(
                        height: 12.h,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 30),
                        child: Row(
                          children: [
                            CustomText(
                              'Number phone:'.tr(),
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w500,
                            ),
                            Spacer(),
                            CustomText(
                              '+966 5995864268',
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 12.h,
                      ),
                      Container(
                        child: Row(
                          children: List.generate(
                              80 ~/ 1,
                              (index) => Expanded(
                                    child: Container(
                                      color: index % 2 == 0
                                          ? Colors.transparent
                                          : Colors.grey.withOpacity(.99),
                                      height: .9,
                                    ),
                                  )),
                        ),
                      ),
                      SizedBox(
                        height: 12.h,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 15),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomText(
                              'Address:'.tr(),
                            ),
                            Spacer(),
                            CustomText(
                              'orderT1'.tr(),
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 12.h,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
