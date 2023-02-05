import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:twnty2/Helper/Router/router.dart';
import 'package:twnty2/UI/CustomWidget/custom_image_network.dart';
import 'package:twnty2/UI/CustomWidget/custom_text.dart';
import 'package:twnty2/UI/Screens/UserScreens/DeailsDetailsScreen/deals_details_screen.dart';
import 'package:twnty2/UI/Screens/UserScreens/HomeScreen/widget/timear_widget_home.dart';
import 'package:twnty2/UI/Utils/constant.dart';

import '../../../../CustomWidget/linear_progress_widget.dart';
import '../../DeailsDetailsScreen/widget/timear_widget.dart';

class SearchOneWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return InkWell(
      onTap: () {
        RouterHelper.routerHelper
            .routingToSpecificWidgetWithoutPop(DealsDetailsScreen());
      },
      child: Container(
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
              color: greyColor.withOpacity(.2), blurRadius: 5, spreadRadius: 1)
        ], borderRadius: BorderRadius.circular(15), color: Colors.white),
        width: 160.w,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 161.h,
              width: double.infinity,
              child: Stack(
                children: [
                  CustomImageNetwork(
                      image:
                          'https://images.unsplash.com/photo-1516762689617-e1cffcef479d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=711&q=80',
                      height: 156.h,
                      radius: 15,
                      width: double.infinity,
                      fit: BoxFit.cover),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 12),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TimearWidgethome(
                            num: '15',
                            title: 'Day',
                          ),
                          SizedBox(
                            width: 10.0.w,
                          ),
                          TimearWidgethome(
                            num: '60',
                            title: 'Min',
                          ),
                          SizedBox(
                            width: 10.0.w,
                          ),
                          TimearWidgethome(
                            num: '23',
                            title: 'sec',
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 5.w),
              child: CustomText(
                'T-shirt for the mens'.tr(),
                fontSize: 14.sp,
                fontWeight: FontWeight.bold,
                maxLines: 1,
              ),
            ),
            Row(
              children: [
                SizedBox(
                  width: 5.w,
                ),
                CustomText(
                  'SAR',
                  decoration: TextDecoration.lineThrough,
                  fontSize: 10.sp,
                  height: 1.3,
                  color: mainAppColor,
                  fontWeight: FontWeight.w300,
                  maxLines: 1,
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
                  'SAR',
                  decoration: TextDecoration.lineThrough,
                  fontSize: 8.sp,
                  height: 1.3,
                  color: greyColor,
                  fontWeight: FontWeight.w300,
                  maxLines: 1,
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
            // SizedBox(
            //   height: 5.h,
            // ),
            // Divider(
            //   thickness: .4,
            //   height: .4,
            //   color: Colors.grey,
            // ),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(8),
                        bottomRight: Radius.circular(8)),
                    border: Border.all(color: Colors.grey, width: 0.2)),
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          CustomText(
                            'Remaining quantity:'.tr(),
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w600,
                          ),
                          SizedBox(width: 4.w,),
                          CustomText(
                            '200',
                            fontSize: 10.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ],
                      ),
                      SizedBox(height: 5.h,),
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
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
