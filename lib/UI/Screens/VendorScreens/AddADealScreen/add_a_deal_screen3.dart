import 'package:dotted_border/dotted_border.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../CustomWidget/custom_bottom.dart';
import '../../../CustomWidget/custom_text.dart';
import '../../../CustomWidget/slider/defult_form_filed.dart';
import '../../../Utils/constant.dart';

class AddADealScreen3 extends StatelessWidget {
  TextEditingController weightController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  TextEditingController termsController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
          'Choice of colors'.tr(),
          fontSize: 12.sp,
        ),
        SizedBox(
          height: 10.h,
        ),
        Row(
          children: [
            CircleAvatar(
              radius: 15,
              backgroundColor: Colors.grey[400],
              child: Icon(
                Icons.add,
                size: 30,
                color: Colors.black,
              ),
            ),
            SizedBox(
              width: 10.w,
            ),
            CircleAvatar(
              radius: 15,
              backgroundColor: Colors.red,
            ),
            SizedBox(
              width: 10.w,
            ),
            CircleAvatar(radius: 15, backgroundColor: Colors.pink),
          ],
        ),
        SizedBox(
          height: 10.h,
        ),
        CustomText(
          'Size'.tr(),
          fontSize: 12.sp,
        ),
        SizedBox(
          height: 10.h,
        ),
        Row(
          children: [
            Expanded(
              child: Container(
                height: 48.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: greyColor, width: 0.2)),
                child: Center(
                    child: CustomText(
                  'Length 50 SM'.tr(),
                  fontSize: 12.sp,
                  color: Colors.grey[500],
                )),
              ),
            ),
            SizedBox(
              width: 5.w,
            ),
            Expanded(
              child: Container(
                height: 48.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: greyColor, width: 0.2)),
                child: Center(
                    child: CustomText(
                  'width 50 SM'.tr(),
                  fontSize: 12.sp,
                  color: Colors.grey[500],
                )),
              ),
            ),
            SizedBox(
              width: 5.w,
            ),
            Expanded(
              child: Container(
                height: 48.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: greyColor, width: 0.2)),
                child: Center(
                    child: CustomText(
                  'Height 50 SM'.tr(),
                  fontSize: 12.sp,
                  color: Colors.grey[500],
                )),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 20.h,
        ),
        Row(
          children: [
            CustomText(
              'Weight'.tr(),
              fontSize: 12.sp,
            ),
            Spacer(),
            CustomText(
              'Edit'.tr(),
              fontSize: 12.sp,
            ),
          ],
        ),
        SizedBox(
          height: 10.h,
        ),
        DefaultTextField(
            paddingV: 20.h,
            paddingH: 15.w,
            maxLines: 1,
            onClick: () {},
            hintText: '50',
            isPassword: false,
            fillColor: Colors.white,
            fontsize: 14.sp,
            filled: true,
            controller: weightController),
        SizedBox(
          height: 20.h,
        ),
        Row(
          children: [
            CustomText(
              'Description'.tr(),
              fontSize: 12.sp,
            ),
            Spacer(),
            CustomText(
              'Edit'.tr(),
              fontSize: 12.sp,
            ),
          ],
        ),
        SizedBox(
          height: 10.h,
        ),
        DefaultTextField(
            paddingV: 20.h,
            paddingH: 15.w,
            maxLines: 3,
            onClick: () {},
            hintText: '',
            isPassword: false,
            fillColor: Colors.white,
            fontsize: 14.sp,
            filled: true,
            controller: descriptionController),
        SizedBox(
          height: 20.h,
        ),
        Row(
          children: [
            CustomText(
              'Terms of the deal'.tr(),
              fontSize: 12.sp,
            ),
            Spacer(),
            CustomText(
              'Edit'.tr(),
              fontSize: 12.sp,
            ),
          ],
        ),
        SizedBox(
          height: 10.h,
        ),
        DefaultTextField(
            paddingV: 20.h,
            paddingH: 15.w,
            maxLines: 3,
            onClick: () {},
            hintText: '',
            isPassword: false,
            fillColor: Colors.white,
            fontsize: 14.sp,
            filled: true,
            controller: termsController),
        SizedBox(
          height: 20.h,
        ),
        Row(
          children: [
            CustomText(
              'Branch selection'.tr(),
              fontSize: 12.sp,
            ),
            Spacer(),
            Icon(Icons.add_location_outlined)
          ],
        ),
        SizedBox(
          height: 10.h,
        ),
        Row(
          children: [
            Image.asset(
              'assets/images/box.png',
              height: 24.h,
              width: 24.w,
            ),
            SizedBox(
              width: 10.w,
            ),
            CustomText(
              'Jeddah branch'.tr(),
            ),
            SizedBox(
              width: 20.w,
            ),
            Image.asset(
              'assets/images/box.png',
              height: 24.h,
              width: 24.w,
            ),
            SizedBox(
              width: 10.w,
            ),
            CustomText(
              'Taif branch'.tr(),
            ),
          ],
        ),
        SizedBox(
          height: 10.h,
        ),
        Row(
          children: [
            Image.asset(
              'assets/images/box.png',
              height: 24.h,
              width: 24.w,
            ),
            SizedBox(
              width: 10.w,
            ),
            CustomText(
              'Mecca branch'.tr(),
            ),
            SizedBox(
              width: 20.w,
            ),
            Image.asset(
              'assets/images/box.png',
              height: 24.h,
              width: 24.w,
            ),
            SizedBox(
              width: 10.w,
            ),
            CustomText(
              'Riyadh Branch'.tr(),
            ),
          ],
        ),
        SizedBox(
          height: 70.h,
        ),
        Center(
          child: CustomBottom(
            title: "Confirm".tr(),
            height: 48.h,
            width: 309.w,
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ),
        SizedBox(
          height: 120.h,
        ),
      ],
    );
  }
}
