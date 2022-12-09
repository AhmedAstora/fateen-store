import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:twnty2/UI/Utils/constant.dart';

class CustomBottom extends StatelessWidget {
  VoidCallback? onTap;
  double? height;
  double? width;
  Color? backgroundColor;
  String? title;
  TextStyle? style;
  double? borderRadius;
  EdgeInsetsGeometry? margin;

  CustomBottom(
      {this.onTap,
      this.height = 45,
      this.width = double.infinity,
        this.margin,
      this.backgroundColor = mainAppColor,
      this.title,
      this.style,
      this.borderRadius = 10});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: margin ?? EdgeInsets.zero,
        alignment: Alignment.center,
        height: height!.h,
        width: width!.w,
        decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(borderRadius!)),
        child:   Text(
          title!.tr(),
          style: style ??
              TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: 16.sp),
        ),
      ),
    );
  }
}
