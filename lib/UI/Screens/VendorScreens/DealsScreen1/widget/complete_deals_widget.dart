import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../Helper/Router/router.dart';
import '../../../../CustomWidget/custom_text.dart';
import '../../../../Utils/constant.dart';
import '../../EditDealsScreen/edit_deals_screen.dart';


class CompleteDealsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.12),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Image.asset(
                      'assets/images/mycart.png',
                      fit: BoxFit.cover,
                      height: 120.h,
                      width: 117.w,
                    ),
                    Container(
                      height: 21.h,
                      width: 117.w,
                      child: Center(
                          child: CustomText(
                        'Completed',
                        fontSize: 10.sp,
                        color: Colors.white,
                      )),
                      decoration: BoxDecoration(
                          color: Color(0xff44B66B),
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10))),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 10.w,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        'T-shirt, Turkish cotton material'.tr(),
                        fontWeight: FontWeight.w600,
                        fontSize: 10.0.sp,
                      ),
                      SizedBox(
                        height: 4.h,
                      ),
                      CustomText(
                        '#NSUD525632'.tr(),
                        fontWeight: FontWeight.w400,
                        fontSize: 10.0.sp,
                      ),
                      SizedBox(
                        height: 4.h,
                      ),
                      Row(
                        children: [
                          CustomText(
                            'Quantity:'.tr(),
                            fontWeight: FontWeight.w400,
                            fontSize: 10.0.sp,
                          ),
                          SizedBox(
                            width: 5.w,
                          ),
                          CustomText(
                            '520',
                            fontSize: 10.0.sp,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 4.h,
                      ),
                      Row(
                        children: [
                          CustomText(
                            'Total amount:'.tr(),
                            fontSize: 10.0.sp,
                          ),
                          SizedBox(
                            width: 5.w,
                          ),
                          CustomText(
                            '520\$',
                            fontSize: 12.0.sp,
                            fontWeight: FontWeight.w500,
                            color: mainAppColor,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 4.h,
                      ),
                      Row(
                        children: [
                          CustomText(
                            'Date: '.tr(),
                            fontSize: 10.0.sp,
                          ),
                          CustomText(
                            '20-12-2022'.tr(),
                            fontSize: 10.0.sp,
                          ),
                        ],
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: CustomText(
                          'View Requests'.tr(),
                          fontSize: 10.0.sp,
                          onTap: (){
                            RouterHelper.routerHelper
                                .routingToSpecificWidgetWithoutPop(
                                EditDealsScreen());
                          },
                        ),
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
