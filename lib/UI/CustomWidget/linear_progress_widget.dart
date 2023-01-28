import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Utils/constant.dart';

class CustomLienarProgressWidget extends StatelessWidget {
  double? value;
  double? width;
  double? height;
  double? paddingH;
  double? paddingV;
  Color? color;
  Color? backgroundColor;
  double? minHeight;

  CustomLienarProgressWidget(
      {this.value,
      this.width,
      this.height,
      this.paddingH,
      this.paddingV,
      this.color,
      this.backgroundColor,
      this.minHeight});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.symmetric(
          horizontal: paddingH ?? 0, vertical: paddingV ?? 0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(200),
        child: LinearProgressIndicator(
          value: value,
          color: color ?? mainAppColor,
          backgroundColor: backgroundColor ?? Colors.grey[300],
          minHeight: minHeight ?? 10.h,
        ),
      ),
    );
  }
}
