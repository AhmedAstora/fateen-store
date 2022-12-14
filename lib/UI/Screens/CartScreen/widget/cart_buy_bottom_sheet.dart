import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:twnty2/Helper/Router/router.dart';
import 'package:twnty2/UI/CustomWidget/custom_text.dart';
import 'package:twnty2/UI/Screens/CheckOutScreen/check_out_screen.dart';

import '../../../CustomWidget/custom_bottom.dart';
import '../../../Utils/constant.dart';

class CartBuyBottomSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 48.h,
            decoration: BoxDecoration(
              border: Border.all(color: Color(0x1a1d2348)),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: [
                SizedBox(
                  width: 10.w,
                ),
                Image.asset(
                  'assets/images/Discount.png',
                  height: 20.h,
                ),
                SizedBox(
                  width: 10.w,
                ),
                CustomText(
                  'Apply voucher for Discount',
                  fontSize: 16.0.sp,
                  color: Color(0xff1D2348),
                ),
                Spacer(),
                Icon(
                  Icons.keyboard_arrow_right,
                  size: 30.0,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 16.h,
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Color(0x80999ba9)),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                // mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    children: [
                      CustomText('items (2)', color: Color(0xff999BA9)),
                      Spacer(),
                      CustomText(
                        '&80.00',
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 12.h,
                  ),
                  Row(
                    children: [
                      CustomText('Discount', color: Color(0xff999BA9)),
                      Spacer(),
                      CustomText(
                        '&7.00',
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Container(
                    child: Row(
                      children: List.generate(
                          80 ~/ 1,
                          (index) => Expanded(
                                child: Container(
                                  color: index % 2 == 0
                                      ? Colors.transparent
                                      : Colors.grey.withOpacity(.6),
                                  height: .6,
                                ),
                              )),
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(
                    children: [
                      CustomText(
                        'Total Price',
                        fontWeight: FontWeight.w600,
                        fontSize: 16.sp,
                      ),
                      Spacer(),
                      CustomText(
                        '&73.00',
                        fontWeight: FontWeight.w600,
                        color: mainAppColor,
                        fontSize: 16.0.sp,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          CustomText(
            'Shipping and Payment',
            fontSize: 16.sp,
            fontWeight: FontWeight.w600,
          ),
          SizedBox(
            height: 6.h,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                'Location :  ',
                fontWeight: FontWeight.w600,
              ),
              CustomText(
                '(870) 285-3677 825 Saudi Arabia,\nThe city of Jeddah(AR), 71958 ',
                color: Color(0x9908151f),
              ),
            ],
          ),
          SizedBox(
            height: 35.h,
          ),
          Center(
            child: CustomBottom(
              onTap: () {
                RouterHelper.routerHelper.routingToSpecificWidgetWithoutPop(CheckOutScreen());
              },
              height: 45.0.sp,
              width: 271.0.sp,
              backgroundColor: mainAppColor,
              title: 'BUY NOW',
              borderRadius: 10,
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
        ],
      ),
    );
  }
}
