import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:twnty2/UI/CustomWidget/custom_bottom.dart';

import '../../../Utils/constant.dart';

class SuccessDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(22)),
      insetPadding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(),
          SizedBox(
            height: 21.h,
          ),
          Image.asset(
            'assets/images/thank.png',
            width: 83.w,
            height: 83.h,
            color: Color(0xff15172E),
          ),
          SizedBox(
            height: 16.h,
          ),
          Text(
            'successfully',
            style: TextStyle(
                fontSize: 16.sp, color: greyColor, fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: 16.h,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 60.w),
            child: Text(
              'Successfully browse the latest products.',
              style: TextStyle(
                  fontSize: 14.sp,
                  color: Colors.grey[500],
                  fontWeight: FontWeight.w400),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 36.h,
          ),
          CustomBottom(
            height: 45.h,
            title: 'Home',
            onTap: () {},
            width: 215.w,
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 16.sp,
                color: Colors.white),
          ),
          SizedBox(
            height: 30.h,
          ),
        ],
      ),
    );
  }
}
