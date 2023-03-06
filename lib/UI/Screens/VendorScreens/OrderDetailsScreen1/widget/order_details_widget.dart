import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../Helper/Router/router.dart';
import '../../../../CustomWidget/custom_text.dart';
import '../../../../Utils/constant.dart';
import '../../OrderDetailsScreen/order_details_screen.dart';

class OrderSellerDetailsWidget extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        RouterHelper.routerHelper
            .routingToSpecificWidgetWithoutPop(OrderDetailsScreen());
      },
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            color: Colors.white,
            border: Border.all(
              color: greyColor.withOpacity(.1),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.21),
                spreadRadius: 1,
                blurRadius: 3,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ]),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Row(
            children: [
              Image.asset(
                'assets/images/icondeatils.png',
                height: 35.h,
                width: 35.w,
              ),
              SizedBox(
                width: 10.w,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      'Abu Osama Yusuf'.tr(),
                      fontSize: 12.sp,
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    CustomText(
                      '#522521'.tr(),
                      fontSize: 10.sp,
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    CustomText(
                      'Kingdom of Saudi Arabia, Riyadh, Western District Street'
                          .tr(),
                      fontSize: 10.sp,
                      maxLines: 2,
                    ),
                  ],
                ),
              ),
              Align(
                  alignment: Alignment.topRight,
                  child: Column(
                    children: [
                      CustomText(
                        'SAR 520',
                        fontSize: 12.sp,
                        color: mainAppColor,
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Container(
                        width: 30.r,
                        height: 30.r,
                        child: Transform.scale(
                          scale: 1.2,
                          child: Checkbox(
                              side: BorderSide(width: .4),
                              value: false,
                              onChanged: (value) {}),
                        ),
                      )
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
