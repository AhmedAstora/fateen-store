import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:twnty2/UI/CustomWidget/custom_image_network.dart';

import '../../../../CustomWidget/custom_text.dart';
import '../../../../CustomWidget/linear_progress_widget.dart';
import '../../../../Utils/constant.dart';


class AllDealsViewOneWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5.h),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(width: 1.w, color: Colors.grey.withOpacity(.3))),
      child: Row(
        children: [
          Container(
            height: 87.h,

            width: 101.w,
            child: Stack(
              children: [
                CustomImageNetwork(
                    image:
                        'https://images.unsplash.com/photo-1516762689617-e1cffcef479d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=711&q=80',
                    height: 87.h,
                    radius: 10,
                    width: 101.w,
                    fit: BoxFit.cover),

              ],
            ),
          ),
          SizedBox(
            width: 10.w,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                  'T-shirt for the mens',
                  fontSize: 14.sp,
                  fontWeight: FontWeight.bold,
                  maxLines: 1,
                ),
                SizedBox(
                  height: 1.h,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    CustomText(
                      'SAR',
                      fontSize: 10.sp,
                      height: 1.3,
                      color: mainAppColor,
                      fontWeight: FontWeight.bold,
                      maxLines: 1,
                    ),
                    SizedBox(
                      width: 1.w,
                    ),
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
                      'Remaining quantity:',
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w600,
                    ),
                    SizedBox(
                      width: 2.w,
                    ),
                    CustomText(
                      '200',
                      fontSize: 10.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ],
                ),
                SizedBox(
                  height: 3.h,
                ),
                Row(
                  children: [
                    CustomLienarProgressWidget(
                      value: .6,
                      width: 106.w,
                      height: 10.h,

                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    CustomText(
                      '78%',
                      fontSize: 10.sp,
                      height: 1,

                    ),

                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
