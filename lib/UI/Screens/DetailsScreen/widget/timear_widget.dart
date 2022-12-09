import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TimearWidget extends StatelessWidget {

  String? num;
  String? title;
  TimearWidget({
    this.num,
    this.title

  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 79.0.h,
      width: 78.0.w,
      decoration: BoxDecoration(
        color: Color(0xd7494747),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          SizedBox(
            height: 6.0.h,
          ),
          Text(
            '${num}',
            style: TextStyle(
              fontSize: 20.0.sp,
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
          ),
          Text(
            '${title}',
            style: TextStyle(
              fontSize: 16.0.sp,
              fontWeight: FontWeight.w400,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
