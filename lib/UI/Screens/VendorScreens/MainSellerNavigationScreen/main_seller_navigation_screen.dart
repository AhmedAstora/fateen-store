import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import 'package:twnty2/UI/Utils/constant.dart';

import '../../../../Helper/Providers/app_provider.dart';
import '../../UserScreens/ProfileScreen/profile_screen.dart';
import '../DealsSearchScreen/deals_search_screen.dart';
import '../HomeSellerScreen/home_seller_screen.dart';
import '../RequestsSellerScreen/requests_seller_screen.dart';

class MainSellerNavigationScreen extends StatelessWidget {
  List<Widget>? navgationWidget = [
    HomeSellerScreen(),
    DealsSearchScreen(),
    RequestsSellerScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Consumer<AppProvider>(builder: (context, provider, _) {
      return Scaffold(
          floatingActionButton: FloatingActionButton(
            backgroundColor: mainAppColor,
            onPressed: () {},
            child: Icon(
              Icons.add_rounded,
              size: 35,
            ), //icon inside button
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          bottomNavigationBar: Container(
            height: 70.h,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(500),
                boxShadow: [
                  BoxShadow(blurRadius: 10, color: Colors.grey.withOpacity(.3))
                ]),
            margin: EdgeInsets.only(right: 20.w, left: 20.w, bottom: 20.h),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(500),
              child: SingleChildScrollView(
                physics: NeverScrollableScrollPhysics(),
                child: BottomAppBar(
                  color: Colors.white,
                  child: Container(
                    height: 60.h,
                    child: Row(
                      children: [
                        Row(
                          children: [
                            MaterialButton(
                              minWidth: 70.w,
                              onPressed: () {
                                provider.changeIndexNavigation(0);
                              },
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    child: Image.asset('assets/images/home.png',
                                        width: 20.w,
                                        height: 20.h,
                                        color:
                                            provider.indexSellerNavigation == 0
                                                ? mainAppColor
                                                : Color(0xff787878)),
                                  ),
                                  SizedBox(
                                    height: 12.h,
                                  ),
                                  CircleAvatar(
                                    radius: 2.5,
                                    backgroundColor:
                                        provider.indexSellerNavigation == 0
                                            ? mainAppColor
                                            : Colors.transparent,
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            MaterialButton(
                              minWidth: 60.w,
                              onPressed: () {
                                provider.changeIndexNavigation(1);
                              },
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    child: Image.asset(
                                      'assets/images/deals.png',
                                      width: 20.w,
                                      height: 20.h,
                                      color: provider.indexSellerNavigation == 1
                                          ? mainAppColor
                                          : Color(0xff787878),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 12.h,
                                  ),
                                  CircleAvatar(
                                    radius: 2.5,
                                    backgroundColor:
                                        provider.indexSellerNavigation == 1
                                            ? mainAppColor
                                            : Colors.transparent,
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                        Spacer(),
                        Row(
                          children: [
                            MaterialButton(
                              minWidth: 60.w,
                              onPressed: () {
                                provider.changeIndexNavigation(2);
                              },
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    child: Image.asset(
                                        'assets/images/order.png',
                                        width: 20.w,
                                        height: 20.h,
                                        color:
                                            provider.indexSellerNavigation == 2
                                                ? mainAppColor
                                                : Color(0xff787878)),
                                  ),
                                  SizedBox(
                                    height: 12.h,
                                  ),
                                  CircleAvatar(
                                    radius: 2.5,
                                    backgroundColor:
                                        provider.indexSellerNavigation == 2
                                            ? mainAppColor
                                            : Colors.transparent,
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            MaterialButton(
                              minWidth: 70.w,
                              onPressed: () {
                                provider.changeIndexNavigation(3);
                              },
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    child: Image.asset(
                                        'assets/images/profile.png',
                                        width: 20.w,
                                        height: 20.h,
                                        color:
                                            provider.indexSellerNavigation == 3
                                                ? mainAppColor
                                                : Color(0xff787878)),
                                  ),
                                  SizedBox(
                                    height: 12.h,
                                  ),
                                  CircleAvatar(
                                    radius: 2.5,
                                    backgroundColor:
                                        provider.indexSellerNavigation == 3
                                            ? mainAppColor
                                            : Colors.transparent,
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  elevation: 10,
                ),
              ),
            ),
          ),
          body: navgationWidget![provider.indexSellerNavigation]);
    });
  }
}
