import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../CustomWidget/custom_bottom.dart';
import '../../../CustomWidget/custom_text.dart';
import '../../../Utils/constant.dart';

class DiscountCodeDialogWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Container(
        height: 274.h,
        width: 340.w,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
          child: Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                  child: Icon(
                Icons.close,
              )),
              CustomText(
                'Enter the discount code'.tr(),
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,
              ),
              SizedBox(
                height: 31.h,
              ),
              Container(
                height: 62.h,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                  color: Colors.grey[200]
                    ),
                ),
              SizedBox(
                height: 23.h,
              ),
              CustomBottom(
                onTap: (){},
                height: 50.0.sp,
                width: 304.0.sp,
                backgroundColor: mainAppColor,
                title: 'Add'.tr(),
                borderRadius: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
