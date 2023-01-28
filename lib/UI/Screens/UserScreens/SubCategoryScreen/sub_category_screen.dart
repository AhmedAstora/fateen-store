import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:twnty2/UI/Screens/UserScreens/SubCategoryScreen/widget/sub_category_widget.dart';

import '../../../CustomWidget/back_appBar_widget.dart';
import '../../../CustomWidget/custom_text.dart';
import '../HomeScreen/widget/all_deals_view_two_widget.dart';

class SubCategoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: BackAppBarWidget(),
        centerTitle: true,
        title: CustomText(
          'Clothing',
          fontSize: 16.0.sp,
          color: Colors.black,
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10.h,
              ),
              Container(
                height: 41.h,
                child: TextFormField(
                  enabled: true,
                  // controller: provider.homeSearchStoreController,
                  onChanged: (value) {
                    // provider.getHome(context);
                  },
                  decoration: InputDecoration(
                      prefixIconConstraints:
                          BoxConstraints(maxHeight: 15.w, maxWidth: 40),
                      prefixIcon: Container(
                        margin: EdgeInsets.symmetric(horizontal: 7.w),
                        child: Image.asset(
                          'assets/images/search.png',
                          width: 24.w,
                          height: 24.h,
                        ),
                      ),
                      suffixIconConstraints:
                          BoxConstraints(maxHeight: 15.w, maxWidth: 40),
                      suffixIcon: InkWell(
                        onTap: () {
                          // RouterHelper.routerHelper
                          //     .routingToSpecificWidgetWithoutPop(
                          //     ScanScreen());
                        },
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 7.w),
                          child: Image.asset(
                            'assets/images/icon_category.png',
                            width: 24.w,
                            height: 20.h,
                          ),
                        ),
                      ),
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 9, vertical: 6),
                      filled: true,
                      fillColor: Colors.grey[250],
                      hintText: 'Search product here...',
                      disabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100),
                          borderSide: BorderSide(
                              color: Colors.grey.withOpacity(0.3),
                              width: .0.w)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100),
                          borderSide: BorderSide(
                              color: Colors.grey.withOpacity(0.3),
                              width: .0.w)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100),
                          borderSide: BorderSide(
                              color: Colors.grey.withOpacity(0.3),
                              width: .0.w)),
                      hintStyle: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Colors.grey,
                          fontSize: 13.sp)),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Container(
                height: 35.h,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemBuilder: (_, index) => SubCategoryWidget(
                    index: index,
                  ),
                  itemCount: titles.length,
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              CustomText(
                'All Products',
                fontSize: 16.sp,
                fontWeight: FontWeight.w600,
                color: Color(0XFF545454),
              ),
              SizedBox(
                height: 5.h,
              ),
              Container(
                child: ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (_, index) => AllDealsViewTwoWidget(),
                  itemCount: 5,
                ),
              ),
              SizedBox(
                height: 100.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
