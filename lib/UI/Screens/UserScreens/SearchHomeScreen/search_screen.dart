import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:twnty2/Helper/Providers/app_provider.dart';
import 'package:twnty2/UI/Screens/UserScreens/HomeScreen/widget/deals_home_widget.dart';
import 'package:twnty2/UI/Screens/UserScreens/SearchHomeScreen/filter_screen.dart';
import 'package:twnty2/UI/Screens/UserScreens/SearchHomeScreen/widget/search_one_widget.dart';

import '../../../../Helper/Router/router.dart';
import '../../../CustomWidget/back_appBar_widget.dart';
import '../../../CustomWidget/custom_text.dart';
import '../../../Utils/constant.dart';
import '../HomeScreen/widget/all_deals_view_one_widget.dart';

class SearchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Consumer<AppProvider>(builder: (context, provider, _) {
      return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
          leading: BackAppBarWidget(),
          centerTitle: true,
          title: CustomText(
            'Search'.tr(),
            fontSize: 16.0.sp,
            color: Colors.black,
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Column(
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
                            RouterHelper.routerHelper
                                .routingToSpecificWidgetWithoutPop(
                                    FilterScreen());
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
                        hintText: 'Search product here...'.tr(),
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
                  height: 20.h,
                ),
                Row(
                  children: [
                    CustomText(
                      'Research results'.tr(),
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w600,
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
                            'View'.tr(),
                            fontSize: 12.sp,
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
                            width: 18.w,
                            height: 18.h,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                provider.isOneView
                    ? Container(
                        child: ListView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemBuilder: (_, index) => AllDealsViewOneWidget(),
                          itemCount: 5,
                        ),
                      )
                    : Container(
                        color: Colors.white,
                        child: GridView.builder(
                          shrinkWrap: true,
                          padding: EdgeInsets.only(top: 5),
                          itemCount: 10,
                          physics: NeverScrollableScrollPhysics(),
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisExtent: 256.h,
                            crossAxisSpacing: 12.0,
                            mainAxisSpacing: 15.0,
                          ),
                          itemBuilder: (context, index) {
                            return SearchOneWidget();
                          },
                        )),
              ],
            ),
          ),
        ),
      );
    });
  }
}
