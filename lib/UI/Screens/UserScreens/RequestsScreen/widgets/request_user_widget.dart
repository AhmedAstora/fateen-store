import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../CustomWidget/custom_text.dart';
import '../../../../Utils/constant.dart';

class RequestUserWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            CustomText(
              'Order NSUD5952562',
              fontSize: 14.sp,
              fontWeight: FontWeight.w600,
            ),
            Spacer(),
            CustomText(
              'View details',
              fontSize: 12.sp,
              color: mainAppColor,
            )
          ],
        ),
        CustomText(
          'Order placed on 12/05/2022',
          fontSize: 10.sp,
          color: Colors.grey,
        ),
        SizedBox(
          height: 5.h,
        ),
        Container(
          height: 112.h,
          child: ListView.separated(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemBuilder: (_, index) => Container(
              width: 310.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xadf8f8f8)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        'assets/images/requests.png',
                        fit: BoxFit.cover,
                        height: 108.h,
                        width: 108.w,
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
                            'Imported cotton clothing set'.tr(),
                            fontWeight: FontWeight.w700,
                            fontSize: 12.0.sp,
                          ),
                          Row(
                            children: [
                              CustomText(
                                'SAR 54.43',
                                fontWeight: FontWeight.w400,
                                fontSize: 12.0.sp,
                                color: mainAppColor,
                              ),
                              SizedBox(
                                width: 5.w,
                              ),
                              CustomText(
                                'SAR54.43',
                                fontWeight: FontWeight.w400,
                                fontSize: 12.0.sp,
                                color: Color(0xff929292),
                              ),
                            ],
                          ),
                          CustomText(
                            'Bread, Avocado, Leaf'.tr(),
                            color: Color(0xff929292),
                            fontSize: 12.0.sp,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CustomText(
                                'request is done'.tr(),
                                fontWeight: FontWeight.w700,
                                fontSize: 12.0.sp,
                              ),
                              SizedBox(
                                width: 10.w,
                              ),
                              CustomText('Awaiting approval'.tr(),
                                  fontSize: 8.0.sp, color: Colors.grey),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            itemCount: 3,
            separatorBuilder: (BuildContext context, int index) => SizedBox(
              width: 10.w,
            ),
          ),
        ),
      ],
    );
  }
}
