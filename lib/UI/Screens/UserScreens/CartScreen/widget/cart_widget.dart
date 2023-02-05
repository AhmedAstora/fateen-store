import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../CustomWidget/custom_text.dart';
import '../../../../Utils/constant.dart';
import '../cart_screen.dart';

class CartWidget extends StatelessWidget {
  Cartdata? model;

  CartWidget({this.model});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 125.h,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.grey, width: 0.3)),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 8.w),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                '${model!.image}',
                fit: BoxFit.cover,
                height: double.infinity,
                width: 115.w,
              ),
            ),
            SizedBox(
              width: 10.w,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Spacer(),
                  Row(
                    children: [
                      CustomText(
                        '${model!.title}'.tr(),
                        fontWeight: FontWeight.w400,
                        fontSize: 16.0.sp,
                        maxLines: 1,
                      ),
                      Spacer(),
                      Image.asset(
                        'assets/images/delete_icon.png',
                        width: 18.w,
                        height: 18.h,
                      )
                    ],
                  ),
                  CustomText(
                    '${model!.title1}'.tr(),
                    fontWeight: FontWeight.w400,
                    fontSize: 14.0.sp,
                    color: Color(0xff99969D),
                  ),
                  CustomText(
                    '${model!.oldPrice}',
                    fontWeight: FontWeight.w500,
                    fontSize: 12.0.sp,
                    color: Color(0xff99969D),
                  ),
                  SizedBox(
                    width: model!.oldPrice == "" ? 0 : 10.w,
                  ),
                  Row(
                    children: [
                      CustomText('${model!.price}',
                          fontWeight: FontWeight.w700,
                          fontSize: 16.0.sp,
                          color: mainAppColor),
                      Spacer(),
                      Container(
                        height: 22.h,
                        width: 67.w,
                        child: Row(
                          children: [
                            Container(
                              alignment: Alignment.bottomCenter,
                              height: 22.h,
                              width: 20.w,
                              child: Icon(
                                Icons.maximize,
                                size: 13.sp,
                                color: Colors.black,
                              ),
                              decoration: BoxDecoration(
                                  color: Color(0xffEBEBEB),
                                  borderRadius: BorderRadius.circular(5)),
                            ),
                            Container(
                                height: 22.h,
                                width: 27.w,
                                color: Colors.white,
                                child: Center(
                                    child: CustomText(
                                  '${model!.num}',
                                  fontSize: 12.0.sp,
                                  fontWeight: FontWeight.w700,
                                ))),
                            Container(
                              height: 22.h,
                              width: 20.w,
                              child: Icon(
                                Icons.add,
                                size: 15.sp,
                                color: Colors.white,
                              ),
                              decoration: BoxDecoration(
                                  color: mainAppColor,
                                  borderRadius: BorderRadius.circular(5)),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
