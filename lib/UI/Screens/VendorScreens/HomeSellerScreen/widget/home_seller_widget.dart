import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../CustomWidget/custom_text.dart';


class HomeSellerWidget extends StatelessWidget {
  int? index;

  HomeSellerWidget({this.index});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 118.h,
      width: 169.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
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
        padding: const EdgeInsets.only(top: 15),
        child: Column(
          children: [
            CustomText(
              '\$850',
              fontWeight: FontWeight.w700,
              color: Color(0xff44B66B),
            ),
            CustomText(
              'Total earnings'.tr(),
              fontSize: 12,
            ),
            Spacer(),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 22.w),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: LinearProgressIndicator(
                  value: .50,
                  color: Colors.green,
                  minHeight: 10.h,
                  backgroundColor: Colors.grey.withOpacity(.3),
                ),
              ),
            ),
            SizedBox(
              height: 20.h,
            )
          ],
        ),
      ),
    );
  }
}
