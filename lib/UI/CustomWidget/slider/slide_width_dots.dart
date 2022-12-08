import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SlideWidthDots extends StatelessWidget {
  bool isActive;
  Color activecolor;
  Color inActivecolor;

  SlideWidthDots(this.isActive, this.activecolor, this.inActivecolor);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 150),
      margin: EdgeInsets.symmetric(horizontal: 2.w),
      height: isActive ? 7.h : 7.h,
      width: isActive ? 20.w : 7.w,
      decoration: BoxDecoration(
        color: isActive ? activecolor : inActivecolor,
        borderRadius: BorderRadius.all(Radius.circular(15)),
      ),
    );
  }
}
