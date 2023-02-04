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
            Icon(
              Icons.close,
            ),

            SizedBox(
              height: 10.h,
            ),
            Row(
              children: [
                CustomText(
                  'Total shipping fee',
                  fontWeight: FontWeight.w600,
                ),
                Spacer(),
                CustomText(
                  'SAR22.00',
                  fontSize: 12.sp,
                  color: mainAppColor,
                ),
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            Container(
              height: 65.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Color(0xffFAFF1D))
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Wrap(
                  children: [
                    CustomText(
                      'Shipping fees vary depending on the selle,s location or warehouse',
                      fontSize: 12.sp,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Row(
              children: [
                CustomText(
                  'Abu Osama Saleh shipping andFatten delivery',
                  fontWeight: FontWeight.w500,
                  fontSize: 12.sp,
                ),
                Spacer(),
                CustomText(
                  'SAR22.00',
                  fontSize: 12.sp,

                ),
              ],
            ),
            CustomText(
              'Winter cotton blouse of various colors and sizes',
              fontSize: 10.sp,
              color: Colors.grey[500],
            ),
            SizedBox(
              height: 10.h,
            ),
            Row(
              children: [
                CustomText(
                  'Abu Osama Saleh shipping andFatten delivery',
                  fontWeight: FontWeight.w500,
                  fontSize: 12.sp,
                ),
                Spacer(),
                CustomText(
                  'SAR22.00',
                  fontSize: 12.sp,

                ),
              ],
            ),
            CustomText(
              'Winter cotton blouse of various colors and sizes',
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
