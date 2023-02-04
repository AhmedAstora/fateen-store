import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:twnty2/UI/CustomWidget/custom_image_network.dart';
import 'package:twnty2/UI/Screens/UserScreens/HomeScreen/widget/timear_widget_home.dart';

import '../../../../CustomWidget/custom_text.dart';
import '../../../../CustomWidget/linear_progress_widget.dart';
import '../../../../Utils/constant.dart';
import '../../DeailsDetailsScreen/widget/timear_widget.dart';

class AllDealsViewTwoWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5.h),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(width: 1.w, color: Colors.grey.withOpacity(.25))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 156.h,
            width: MediaQuery.of(context).size.width,
            child: Stack(
              children: [
                CustomImageNetwork(
                    image:
                        'https://images.unsplash.com/photo-1516762689617-e1cffcef479d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=711&q=80',
                    height: 156.h,
                    radius: 10,
                    width: MediaQuery.of(context).size.width,
                    fit: BoxFit.cover),

                Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 12),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TimearWidget(
                          num: '15',
                          title: 'Day',
                          height: 57.h,
                          width: 57.w,
                          heightnum: 1.4,
                          heighttitle: 1.2,
                        ),
                        SizedBox(
                          width: 10.0.w,
                        ),
                        TimearWidget(
                          num: '60',
                          title: 'Min',
                          height: 57.h,
                          width: 57.w,
                          heightnum: 1.4,
                          heighttitle: 1.2,
                        ),
                        SizedBox(
                          width: 10.0.w,
                        ),
                        TimearWidget(
                          num: '23',
                          title: 'sec',
                          height: 57.h,
                          width: 57.w,
                          heightnum: 1.4,
                          heighttitle: 1.2,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 5.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: CustomText(
              'T-shirt for the mens T-shirt for the mens',
              fontSize: 15.sp,
              fontWeight: FontWeight.bold,
              maxLines: 1,
            ),
          ),
          SizedBox(
            height: 3.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: Row(
              children: [
                CustomText(
                  '\$54.43',
                  fontSize: 16.sp,
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
          ),

      Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        child:CustomText(
            'Remaining quantity: 200',
            fontSize: 10.sp,
            fontWeight: FontWeight.w600,
          ),),
      SizedBox(
        height: 5.h,
      ),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        child: Row(
            children: [
              CustomLienarProgressWidget(
                value: .6,
                width: 290.w,
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
          ),),
        ],
      ),
    );
  }
}
