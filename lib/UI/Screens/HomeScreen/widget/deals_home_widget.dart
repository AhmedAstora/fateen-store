import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:twnty2/UI/CustomWidget/custom_image_network.dart';
import 'package:twnty2/UI/CustomWidget/custom_text.dart';
import 'package:twnty2/UI/Utils/constant.dart';

class DealsHomeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: 160.w,
      margin: EdgeInsets.only(right: 20.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 156.h,
            width: 160.w,
            child: Stack(
              children: [
                CustomImageNetwork(
                    image:
                        'https://images.unsplash.com/photo-1516762689617-e1cffcef479d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=711&q=80',
                    height: 156.h,
                    radius: 15,
                    width: 160.w,
                    fit: BoxFit.cover),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Container(
                    margin:
                        EdgeInsets.symmetric(horizontal: 10.w, vertical: 13.h),
                    padding:
                        EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.black.withOpacity(.4)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        CustomText(
                          'Amount:',
                          fontSize: 12.sp,
                          color: Colors.white,
                        ),
                        CustomText(
                          '200',
                          fontSize: 12.sp,
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                        ),
                        SizedBox(width: 10.w,)
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          CustomText(
            'T-shirt for the mens',
            fontSize: 14.sp,
            fontWeight: FontWeight.bold,
            maxLines: 1,
          ),
          Row(
            children: [
              CustomText(
                '\$54.43',
                fontSize: 14.sp,
                height: 1.3,
                color: mainAppColor,
                fontWeight: FontWeight.bold,
                maxLines: 1,
              ),
              SizedBox(
                width: 5.w,
              ),
              CustomText(
                '\$54.43',
                decoration: TextDecoration.lineThrough,
                fontSize: 12.sp,
                height: 1.3,
                color: greyColor,
                fontWeight: FontWeight.w300,
                maxLines: 1,
              ),
            ],
          ),
          Row(
            children: [
              CustomText(
                '20-11-2022',
                fontSize: 12.sp,
                height: 1.5,
                color: greyColor,
                fontWeight: FontWeight.w300,
                maxLines: 1,
              ),
              SizedBox(
                width: 5.w,
              ),
              CustomText(
                '20-11-2022',
                fontSize: 12.sp,
                height: 1.5,
                color: greyColor,
                fontWeight: FontWeight.w300,
                maxLines: 1,
              ),
            ],
          )
        ],
      ),
    );
  }
}
