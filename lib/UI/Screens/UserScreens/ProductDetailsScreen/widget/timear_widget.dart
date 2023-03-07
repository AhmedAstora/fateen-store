import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../CustomWidget/custom_text.dart';

class TimearWidget extends StatelessWidget {
  String? num;
  String? title;
  double? height;
  double? width;
  double? heightnum;
  double? heighttitle;

  TimearWidget({
    this.num,
    this.title,
    this.height,
    this.width,
    this.heightnum,
    this.heighttitle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: Color(0xd7494747),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomText(
            '${num}',
            fontSize: 20.0.sp,
            fontWeight: FontWeight.w700,
            height: heightnum,
            color: Colors.white,
          ),
          CustomText(
            '${title}'.tr(),

            fontSize: 16.0.sp,
            fontWeight: FontWeight.normal,
            color: Colors.white,
            height: heighttitle,
          ),
        ],
      ),
    );
  }
}
