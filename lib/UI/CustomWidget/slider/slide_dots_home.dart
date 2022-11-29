import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SlideDotsHome extends StatelessWidget {
  bool isActive;
  Color activecolor;
  Color inActivecolor;

  SlideDotsHome(this.isActive, this.activecolor, this.inActivecolor);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 150),
      margin: EdgeInsets.symmetric(horizontal: 5.w),
      height: isActive ? 8.h : 8.h,
      width: isActive ? 8.w : 8.w,
      decoration: BoxDecoration(
        color: isActive ? activecolor : inActivecolor,
        borderRadius: BorderRadius.all(Radius.circular(15)),
      ),
    );
  }
}
