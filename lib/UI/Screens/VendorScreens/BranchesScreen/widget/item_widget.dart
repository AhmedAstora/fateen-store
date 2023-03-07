import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../CustomWidget/custom_text.dart';
import '../../../../Utils/constant.dart';

class ItemWidget extends StatelessWidget {
  const ItemWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(
              'Main warehouse',
              fontSize: 12.sp,
              color: mainAppColor,
            ),
            SizedBox(
              width: 10.w,
            ),
            Container(
              height: 18.h,
              width: 59.w,
              child: Center(
                  child: CustomText(
                    'Storehouse',
                    fontSize: 8.sp,
                  )),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(color: Colors.black)),
            ),
            Spacer(),
            Transform.scale(
                scaleX: 0.6,
                scaleY: 0.5,
                alignment: Alignment.topRight,
                child: CupertinoSwitch(
                  value: false,
                  trackColor: Colors.grey,
                  onChanged: (value) {},
                  activeColor: Colors.black,
                ))
          ],
        ),
        Row(
          children: [
            Image.asset('assets/images/farm.png',height: 12.h,width: 12.w,),
            SizedBox(
              width: 5.w,
            ),
            CustomText('Storehouse',fontSize: 8.sp,),
            SizedBox(
              width: 20.w,
            ),
            Image.asset('assets/images/badge-check.png',height: 12.h,width: 12.w,),
            SizedBox(
              width: 5.w,
            ),
            CustomText('Default',fontSize: 8.sp,),
          ],
        ),
      ],
    );
  }
}
