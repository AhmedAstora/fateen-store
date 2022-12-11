import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../CustomWidget/custom_text.dart';
import '../../Utils/constant.dart';

class DeleteDialogWidget extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Dialog(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),child: Container(
      height: 153.h,
      width: 265.w,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CustomText('Edite'),
            Divider(
              thickness: 1,
            ),
            CustomText('Delete'),
            Divider(
              thickness: 1,
            ),
            CustomText('cancel',color: mainAppColor,),
          ],
        ),
      ),
    ),);

  }
}
