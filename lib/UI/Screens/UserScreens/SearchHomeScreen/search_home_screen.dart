import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../CustomWidget/custom_bottom.dart';
import '../../../CustomWidget/custom_text.dart';
import '../../../CustomWidget/custom_text_field.dart';
import '../../../Utils/constant.dart';
import '../CartScreen/widget/cart_buy_bottom_sheet.dart';

class SearchHomeScreen extends StatelessWidget {
  TextEditingController StoteController = TextEditingController();
  TextEditingController RegionController = TextEditingController();
  TextEditingController NeighborhoodController = TextEditingController();
  TextEditingController HouseNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            SizedBox(
              height: 50.h,
            ),
            Row(
              children: [
                Icon(
                  Icons.keyboard_arrow_left_outlined,
                  size: 30,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 16.w),
                  height: 45.h,
                  width: 257.w,
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
                          color: Colors.black,
                          size: 30,
                        ),
                        SizedBox(
                          width: 11.w,
                        ),
                        CustomText(
                          'Search product here...',
                          color: Color(0xFF000000).withOpacity(0.5),
                          fontSize: 13.sp,
                        ),
                      ],
                    ),
                  ),
                ),
                Spacer(),
                ImageIcon(
                  AssetImage("assets/images/icon_category.png"),
                  color: Colors.black,
                  size: 30,
                ),
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomTextField(
                      controller: StoteController,
                      onClick: () {},
                      fontsize: 16.sp,
                      hintText: 'Categories',
                      isPassword: false,
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    CustomTextField(
                        onClick: () {},
                        fontsize: 16.sp,
                        hintText: 'Date',
                        isPassword: false,
                        controller: RegionController),
                    SizedBox(
                      height: 20.h,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.check_box_outline_blank_rounded,
                          color: Colors.grey[300],
                          size: 30,
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                        CustomText('Location',),
                        SizedBox(
                          width: 30.w,
                        ),
                        Icon(
                          Icons.check_box_outlined,
                          color: Colors.grey[300],
                          size: 30,
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                        CustomText('Price Range',),
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    CustomText('Price Range',),
                    SizedBox(
                      height: 80.h,
                    ),
                    Center(
                      child: CustomBottom(
                        onTap: () {
                          showModalBottomSheet(
                              isScrollControlled: true,
                              context: context,
                              builder: (_) => CartBuyBottomSheet());
                        },
                        height: 45.0.sp,
                        width: 271.0.sp,
                        backgroundColor: mainAppColor,
                        title: 'Apply filters',
                        borderRadius: 10,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
