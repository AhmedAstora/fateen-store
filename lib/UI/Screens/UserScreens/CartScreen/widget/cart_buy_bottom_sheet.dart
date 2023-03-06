import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:twnty2/Helper/Router/router.dart';
import 'package:twnty2/UI/CustomWidget/custom_text.dart';

import '../../../../CustomWidget/custom_bottom.dart';
import '../../../../Utils/constant.dart';
import '../../CheckOutScreen/check_out_screen.dart';

class CartBuyBottomSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          InkWell(
            onTap: () => Navigator.pop(context),
            child: Icon(
              Icons.close,
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Row(
            children: [
              CustomText(
                'Total shipping fee'.tr(),
                fontWeight: FontWeight.w600,
              ),
              Spacer(),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  CustomText(
                    'SAR',
                    fontSize: 12.sp,
                    color: mainAppColor,
                  ),
                  CustomText(
                    '22.00',
                    fontSize: 14.sp,
                    color: mainAppColor,
                    fontWeight: FontWeight.bold,
                  ),
                ],
              )
            ],
          ),
          SizedBox(
            height: 10.h,
          ),
          Container(
            height: 65.h,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Color(0xffFAFF1D))),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Wrap(
                children: [
                  CustomText(
                    'Shipping fees vary depending on the selle,s location or warehouse'
                        .tr(),
                    fontSize: 12.sp,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          InkWell(
            onTap: () {
              RouterHelper.routerHelper
                  .routingToSpecificWidgetWithoutPop(CheckOutScreen());
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      'cartT1'.tr(),
                      fontWeight: FontWeight.w700,
                      height: 1.5,
                      fontSize: 12.sp,
                    ),
                    Spacer(),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        CustomText(
                          'SAR',
                          fontSize: 11.sp,
                          fontWeight: FontWeight.w600,
                        ),
                        CustomText(
                          '22.00',
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w700,
                        ),
                      ],
                    ),
                  ],
                ),
                CustomText(
                  'Winter cotton blouse of various colors and sizes'.tr(),
                  fontSize: 10.sp,
                  color: Colors.grey[500],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                'cartT1'.tr(),
                fontWeight: FontWeight.w700,
                height: 1.5,
                fontSize: 12.sp,
              ),
              Spacer(),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  CustomText(
                    'SAR',
                    fontSize: 11.sp,
                    fontWeight: FontWeight.w600,
                  ),
                  CustomText(
                    '22.00',
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ],
              ),
            ],
          ),
          CustomText(
            'Winter cotton blouse of various colors and sizes'.tr(),
            fontSize: 10.sp,
            color: Colors.grey[500],
          ),
          SizedBox(
            height: 40.h,
          ),
        ],
      ),
    );
  }
}
