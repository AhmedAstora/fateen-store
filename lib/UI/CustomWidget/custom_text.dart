import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomText extends StatelessWidget {
  String text;
  double? fontSize;
  FontWeight? fontWeight;
  TextAlign? textAlign;
  int? maxLines;
  Color? color;
  double? height;

  CustomText(this.text,
      {this.fontSize,
      this.fontWeight,
      this.textAlign,
      this.maxLines,
      this.color,
      this.height});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text(
      text,
      maxLines: maxLines,
      style: TextStyle(
          color: color,
          height: height,
          fontSize: fontSize ?? 14.sp,
          fontWeight: fontWeight ?? FontWeight.w400),
      textAlign: textAlign ?? TextAlign.start,
    );
  }
}
