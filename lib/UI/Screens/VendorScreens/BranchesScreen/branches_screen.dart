import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:twnty2/UI/CustomWidget/custom_bottom.dart';
import 'package:twnty2/UI/CustomWidget/custom_search_field.dart';
import 'package:twnty2/UI/CustomWidget/custom_text_field.dart';
import 'package:twnty2/UI/CustomWidget/slider/defult_form_filed.dart';
import 'package:twnty2/UI/Screens/VendorScreens/BranchesScreen/widget/item_widget.dart';
import 'package:twnty2/UI/Utils/constant.dart';
import '../../../CustomWidget/back_appBar_widget.dart';
import '../../../CustomWidget/custom_text.dart';

class BranchesScreen extends StatelessWidget {
  TextEditingController filterController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        leading: BackAppBarWidget(),
        title: CustomText(
          'Branches'.tr(),
          fontSize: 16.sp,
          color: Colors.black,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Icon(
              Icons.add_location_outlined,
              size: 30.0,
              color: Colors.black,
            ),
          ),
        ],
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                    child: CustomSearchField(
                        onClick: () {},
                        hintText: 'Search for a warehouse or branch',
                        fontsize: 12.sp,
                        filled: true,
                        fillColor: Color(0xffeeeeee),
                        isPassword: false,
                        controller: filterController)),
                SizedBox(
                  width: 10.w,
                ),
                Image.asset(
                  'assets/images/icon_categorys.png',
                  width: 24.w,
                  height: 20.h,
                ),
              ],
            ),
            SizedBox(
              height: 40.h,
            ),
            Container(
              height: 42.h,
              color: Color(0xffFBFBFB),
              child: Row(
                children: [
                  Image.asset(
                    'assets/images/shop.png',
                    height: 16.h,
                    width: 16.w,
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  CustomText(
                    'Branches and warehouses',
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  CustomText(
                    '(1 out of 15)',
                    fontSize: 8.sp,
                  ),
                ],
              ),
            ),
            Container(
              height: 1,
              color: Colors.grey.shade300,
            ),
            SizedBox(
              height: 10.h,
            ),
            Expanded(
              child: ListView.separated(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  separatorBuilder: (context, index) =>  Column(
                    children: [
                      SizedBox(
                        height: 10.h,
                      ),
                      Container(
                        height: 1,
                        color: Colors.grey.shade300,
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                    ],
                  ),
                  itemCount: 2,
                  itemBuilder: (context, index) {
                    return ItemWidget();
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
