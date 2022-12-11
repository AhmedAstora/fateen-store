import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../CustomWidget/custom_text.dart';
import '../../../Utils/constant.dart';

class CategoryHomeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
        DottedBorder(
          strokeWidth: 1,
          dashPattern: [3, 2],
          color: mainAppColor,
          borderType: BorderType.Circle,
          padding: EdgeInsets.all(1),
          child: Container(
            alignment: Alignment.center,
            width: 60.r,
            height: 60.r,
            padding: EdgeInsets.all(1.5),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.asset(
                'assets/images/img1.png',
                fit: BoxFit.cover,
                width: 58.r,
                height: 58.r,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 2.h,
        ),
        CustomText(
          "Category",
          fontSize: 12.sp,
        )
      ],
    );
  }
}
