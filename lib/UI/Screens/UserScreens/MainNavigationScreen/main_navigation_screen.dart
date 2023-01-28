import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:twnty2/Helper/Providers/app_provider.dart';
import 'package:twnty2/UI/Utils/constant.dart';

import '../../SharedScreens/NotificationsScreen/notifications_screen.dart';
import '../CartScreen/cart_screen.dart';
import '../HomeScreen/home_screen.dart';
import '../ProfileScreen/profile_screen.dart';
import '../RequestsScreen/requests_screen.dart';

class MainNavigationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Consumer<AppProvider>(builder: (context, provider, _) {
      return Scaffold(
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
                child: BottomNavigationBar(
                  // ba: SpHelper.spHelper.getTheme()! ? Colors.white : Colors.black,
                  elevation: 10,
                  selectedIconTheme: IconThemeData(size: 10),
                  showUnselectedLabels: false,
                  // height: 90.h,
                  showSelectedLabels: false,
                  // activeColor: mainAppColor,
                  type: BottomNavigationBarType.fixed,
                  backgroundColor: Colors.white,

                  // style: TabStyle.fixedCircle,

                  items: [
                    BottomNavigationBarItem(
                      icon: Image.asset(
                        'assets/images/home.png',
                        width: 22,
                        height: 22,
                        color: provider.indexNavigation == 0
                            ? mainAppColor
                            : inActiveColor,
                      ),
                      label: "home".tr(),

                      // icon: Image.asset('assets/icons/red-home.png'),
                    ),
                    BottomNavigationBarItem(
                      icon: Image.asset(
                        'assets/images/notification1.png',
                        width: 22,
                        height: 22,
                        color: provider.indexNavigation == 1
                            ? mainAppColor
                            : inActiveColor,
                      ),
                      label: "Notification".tr(),
                    ),
                    BottomNavigationBarItem(
                      icon: Image.asset(
                        'assets/images/cart.png',
                        width: 22,
                        height: 22,
                        color: provider.indexNavigation == 2
                            ? mainAppColor
                            : inActiveColor,
                      ),
                      label: "Cart".tr(),
                    ),
                    BottomNavigationBarItem(
                      icon: Image.asset(
                        'assets/images/order.png',
                        width: 22,
                        height: 22,
                        color: provider.indexNavigation == 3
                            ? mainAppColor
                            : inActiveColor,
                      ),
                      label: "Orders".tr(),
                    ),
                    BottomNavigationBarItem(
                      icon: Image.asset(
                        'assets/images/profile.png',
                        color: provider.indexNavigation == 4
                            ? mainAppColor
                            : inActiveColor,
                        width: 22,
                        height: 22,
                      ),
                      label: "profile".tr(),
                    ),
                  ],
                  currentIndex: provider.indexNavigation,
                  onTap: (int i) {
                    provider.chageSelectedIndex(i);
                  },
                ),
              ),
            ),
          ),
          body: navgationWidget![provider.indexNavigation]);
    });
  }
}

List<Widget>? navgationWidget = [
  HomeScreen(),
  NotificationsScreen(),
  CartScreen(),
  RequestsScreen(),
  ProfileScreen(),
];
