import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SlideDots extends StatelessWidget {
  bool isActive;
  Color activecolor;
  Color inActivecolor;

  SlideDots(this.isActive, this.activecolor, this.inActivecolor);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 150),
      margin: EdgeInsets.symmetric(horizontal: 5.w),
      height: isActive ? 10.h : 10.h,
      width: isActive ? 10.w : 10.w,
      decoration: BoxDecoration(
        color: isActive ? activecolor : inActivecolor,
        borderRadius: BorderRadius.all(Radius.circular(15)),
      ),
    );
  }
}
