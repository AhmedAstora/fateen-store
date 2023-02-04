import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:twnty2/UI/CustomWidget/custom_text.dart';

class TimearWidgethome extends StatelessWidget {
  String? num;
  String? title;

  TimearWidgethome({this.num, this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30.h,
      width: 30.0.w,
      decoration: BoxDecoration(
        color: Color(0xd7494747),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Column(
        children: [
          CustomText(
            '${num}',
            height: 1.3,
            color: Colors.white,
            fontWeight: FontWeight.w700,
          ),
          CustomText(
            '${title}',
            height: 1.1,
            fontSize: 10.sp,
            color: Colors.white,
            fontWeight: FontWeight.w700,
          ),
        ],
      ),
    );
  }
}
