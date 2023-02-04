import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:twnty2/Helper/Providers/app_provider.dart';
import 'package:twnty2/Helper/Router/router.dart';
import 'package:twnty2/UI/CustomWidget/custom_text.dart';
import 'package:twnty2/UI/CustomWidget/slider/carousel_slider.dart';
import 'package:twnty2/UI/Screens/UserScreens/HomeScreen/widget/all_deals_view_one_widget.dart';
import 'package:twnty2/UI/Screens/UserScreens/HomeScreen/widget/all_deals_view_two_widget.dart';
import 'package:twnty2/UI/Screens/UserScreens/HomeScreen/widget/category_home_widget.dart';
import 'package:twnty2/UI/Screens/UserScreens/HomeScreen/widget/deals_home_widget.dart';

import 'package:twnty2/UI/Utils/constant.dart';

import '../CategoryScreen/category_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<AppProvider>(builder: (context, provider, _) {
      return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          title: Column(
            children: [
              CustomText(
                'Your Location',
                height: 1.2,
                fontSize: 12.sp,
                color: Colors.black,
                maxLines: 1,
                fontWeight: FontWeight.w500,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 0),
                child: CustomText(
                  'Saudi Arabia',
                  fontSize: 14.sp,
                  color: Colors.black,
                  height: 1.2,
                  maxLines: 1,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          backgroundColor: Colors.white,
          elevation: 0.0,
        ),
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                SizedBox(
                  height: 10.h,
                ),
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
                        Spacer(),
                        ImageIcon(
                          AssetImage("assets/images/icon_category.png"),
                          color: Colors.black,
                          size: 30,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 15.h,
                ),
                CarouselSliderImage(),
                SizedBox(
                  height: 14.h,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 16.w,
                    ),
                    CustomText(
                      'Categories',
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                      color: Color(0XFF545454),
                    ),
                    Spacer(),
                    CustomText(
                      'See all',
                      onTap: () {
                        RouterHelper.routerHelper
                            .routingToSpecificWidgetWithoutPop(
                                CategoryScreen());
                      },
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w600,
                      color: mainAppColor,
                    ),
                    SizedBox(
                      width: 16.w,
                    ),
                  ],
                ),
                SizedBox(
                  height: 12.h,
                ),
                Container(
                  padding: EdgeInsets.only(left: 16.w),
                  height: 92.r,
                  child: ListView.separated(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => CategoryHomeWidget(),
                      separatorBuilder: (context, index) => SizedBox(
                            width: 15.w,
                          ),
                      itemCount: 5),
                ),
                SizedBox(
                  height: 14.h,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 16.w,
                    ),
                    CustomText(
                      'New deals',
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w700,
                      color: Color(0XFF545454),
                    ),
                    Spacer(),
                    CustomText(
                      'View all',
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w600,
                      color: mainAppColor,
                    ),
                    SizedBox(
                      width: 16.w,
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                Container(
                  margin: EdgeInsets.only(left: 16.w),
                  height: 240.h,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemBuilder: (_, index) => DealsHomeWidget(),
                    itemCount: 5,
                  ),
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 16.w,
                    ),
                    CustomText(
                      'Recommended for You',
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w700,
                      color: Color(0XFF545454),
                    ),
                    Spacer(),
                    CustomText(
                      'View all',
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w600,
                      color: mainAppColor,
                    ),
                    SizedBox(
                      width: 16.w,
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                Container(
                  margin: EdgeInsets.only(left: 16.w),
                  height: 240.h,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemBuilder: (_, index) => DealsHomeWidget(),
                    itemCount: 5,
                  ),
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 16.w,
                    ),
                    CustomText(
                      'Deals are about to expire',
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w700,
                      color: Color(0XFF545454),
                    ),
                    Spacer(),
                    CustomText(
                      'View all',
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w600,
                      color: mainAppColor,
                    ),
                    SizedBox(
                      width: 16.w,
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                Container(
                  margin: EdgeInsets.only(left: 16.w),
                  height: 240.h,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemBuilder: (_, index) => DealsHomeWidget(),
                    itemCount: 5,
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 16.w,
                    ),
                    CustomText(
                      'All Products',
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w700,
                      color: Color(0XFF545454),
                    ),
                    Spacer(),
                    InkWell(
                      onTap: () {
                        provider.changeHomeView();
                      },
                      child: Row(
                        children: [
                          CustomText(
                            'View',
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w500,
                            color: mainAppColor,
                          ),
                          SizedBox(
                            width: 5.w,
                          ),
                          Image.asset(
                            provider.isOneView
                                ? 'assets/images/view.png'
                                : 'assets/images/list_view.png',
                            width: 20.w,
                            height: 20.h,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 16.w,
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 16.w),
                  child: ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (_, index) => provider.isOneView
                        ? AllDealsViewOneWidget()
                        : AllDealsViewTwoWidget(),
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
    });
  }
}
