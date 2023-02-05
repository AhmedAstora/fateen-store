import 'package:dotted_border/dotted_border.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:twnty2/Helper/Router/router.dart';

import '../../../../CustomWidget/custom_text.dart';
import '../../../../Utils/constant.dart';

import '../../SubCategoryScreen/sub_category_screen.dart';

class CategoryWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
        InkWell(
          onTap: () {
            RouterHelper.routerHelper
                .routingToSpecificWidgetWithoutPop(SubCategoryScreen());
          },
          child: DottedBorder(
            strokeWidth: 1,
            dashPattern: [3, 2],
            color: mainAppColor,
            borderType: BorderType.Circle,
            padding: EdgeInsets.all(1),
            child: Container(
              height: 100.r,
              padding: EdgeInsets.all(5),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.asset(
                  'assets/images/img1.png',
                  fit: BoxFit.cover,
                  height: 100.r,
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 2.h,
        ),
        CustomText(
          "Category".tr(),
          fontSize: 13.sp,
          fontWeight: FontWeight.w600,
          color: mainAppColor,
        )
      ],
    );
  }
}
