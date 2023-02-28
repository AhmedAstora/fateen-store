import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../CustomWidget/custom_image_network.dart';
import '../../../../CustomWidget/custom_text.dart';
import '../../../../Utils/constant.dart';

class FavoriteWidget extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            CustomImageNetwork(
                image:
                'https://images.unsplash.com/photo-1516762689617-e1cffcef479d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=711&q=80',
                height: 68.h,
                radius: 8,
                width: 96.w,
                fit: BoxFit.cover),
            SizedBox(
              width: 10.w,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      CustomText(
                        'T-shirt for the mens'.tr(),
                        fontWeight: FontWeight.w600,
                      ),
                      Spacer(),
                      Image.asset('assets/images/delete_icon.png',height:16.h ,width: 16.w,),
                    ],
                  ),
                  Row(
                    children: [
                      CustomText(
                        'SAR54.43'.tr(),
                        color: mainAppColor,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w700,
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      CustomText(
                        'SAR54.43'.tr(),
                        color: Colors.grey,
                        fontSize: 8.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      CustomText(
                        'Remaining quantity:'.tr(),
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w600,
                      ),
                      CustomText(
                        '  200 '.tr(),
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
