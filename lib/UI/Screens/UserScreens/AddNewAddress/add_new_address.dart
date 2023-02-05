import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:twnty2/UI/CustomWidget/custom_text.dart';
import 'package:twnty2/UI/Utils/constant.dart';

import '../../../CustomWidget/custom_bottom.dart';
import 'Widget/add_address_bottom_sheet.dart';

class AddNewAddress extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainAppColor,
      appBar: AppBar(
        backgroundColor: mainAppColor,
        elevation: 0.0,
        leading: Icon(
          Icons.keyboard_arrow_left_rounded,
          size: 25,
        ),
        title: CustomText(
          'Add new address'.tr(),
          fontSize: 16.sp,
          fontWeight: FontWeight.w500,
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16.w),
              height: 45.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(23.5),
                color: Color(0xFFF1F1F1),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    ImageIcon(
                      AssetImage("assets/images/search.png"),
                      color: mainAppColor,
                      size: 30,
                    ),
                    SizedBox(
                      width: 11.w,
                    ),
                    CustomText(
                      'Search product here...'.tr(),
                      color: Color(0xFF000000).withOpacity(0.5),
                      fontSize: 13.sp,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            Stack(
              alignment: Alignment.bottomLeft,
              children: [
                Container(
                  height: 670.h,
                  child: Image.asset(
                    'assets/images/map1.png',
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  height: 80.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomBottom(
                        onTap: ()
                        {
                          showModalBottomSheet(
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.vertical(top: Radius.circular(30.0)),
                              ),
                              isScrollControlled: true,
                              context: context,
                              builder: (_) => AddAddressBottomSheet());
                        },
                        height: 45.0.sp,
                        width: 271.0.sp,
                        backgroundColor: mainAppColor,
                        title: 'Checkout'.tr(),
                        borderRadius: 10,
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Container(
                        height: 45.h,
                        width: 50.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xffDADADA)
                        ),
                        child: Image.asset('assets/images/icon6.png',),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
