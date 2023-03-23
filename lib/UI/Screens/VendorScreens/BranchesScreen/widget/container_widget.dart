import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../CustomWidget/custom_text.dart';

class ContainerWidget extends StatelessWidget {
String text;
String text1;

ContainerWidget(this.text,this.text1);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            alignment: Alignment.centerLeft,
            height: 42.h,
            decoration: BoxDecoration(
              color: Color(0xffE0E0E0),
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Colors.grey.shade400),
            ),
            child: Row(
              children: [
                SizedBox(
                  width: 20.w,
                ),
                CustomText(text,fontSize: 12.sp,),
              ],
            ),
          ),
        ),
        SizedBox(
          width: 15.w,
        ),
        Expanded(
          child: Container(
            alignment: Alignment.centerLeft,
            height: 42.h,
            decoration: BoxDecoration(
              color: Color(0xffE0E0E0),
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Colors.grey.shade400),
            ),
            child: Row(
              children: [
                SizedBox(
                  width: 20.w,
                ),
                CustomText(text1,fontSize: 12.sp,),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
