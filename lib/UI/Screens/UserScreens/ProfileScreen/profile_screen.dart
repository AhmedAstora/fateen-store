import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:twnty2/Helper/Providers/app_provider.dart';
import 'package:twnty2/UI/CustomWidget/custom_image_network.dart';

import 'package:twnty2/UI/Screens/UserScreens/ProfileScreen/privacy_screen.dart';
import 'package:twnty2/UI/Screens/UserScreens/ProfileScreen/terms_screen.dart';
import 'package:twnty2/UI/Screens/UserScreens/ProfileScreen/widget/delete_account_dialog.dart';
import 'package:twnty2/UI/Screens/UserScreens/ProfileScreen/widget/log_out_dialog.dart';
import 'package:twnty2/UI/Screens/UserScreens/ProfileScreen/widget/profile_widget.dart';
import 'package:twnty2/UI/Utils/constant.dart';

import '../../../../Helper/Router/router.dart';
import '../../../CustomWidget/custom_text.dart';

import '../../SharedScreens/AddressScreen/address_screen.dart';
import 'about_screen.dart';
import 'change_password_screen.dart';
import 'contact_us_screen.dart';
import 'edit_profile_screen.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Consumer<AppProvider>(builder: (context, provider, _) {
      return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.white,
          title: CustomText(
            'Profile',
            fontSize: 16.sp,
            color: Colors.black,
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Container(
                  alignment: Alignment.center,
                  width: 100.r,
                  height: 100.r,
                  child: Stack(
                    children: [
                      provider.file != null
                          ? Image.file(
                              provider.file!,
                              width: 90.r,
                              height: 90.r,
                              fit: BoxFit.cover,
                            )
                          : CustomImageNetwork(
                              image:
                                  "https://images.unsplash.com/photo-1492562080023-ab3db95bfbce?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2896&q=80",
                              width: 90.r,
                              height: 90.r,
                              radius: 500,
                              fit: BoxFit.cover,
                            ),
                      Visibility(
                          visible: true,
                          child: Align(
                            alignment: Alignment.bottomRight,
                            child: Container(
                              padding: EdgeInsets.all(5),
                              width: 25.r,
                              height: 25.r,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(100),
                              ),
                              margin: EdgeInsets.symmetric(
                                  horizontal: 6.w, vertical: 6.h),
                              child: Image.asset(
                                'assets/images/camera_profile.png',
                                width: 20.w,
                                height: 20.h,
                                color: Colors.black,
                              ),
                            ),
                          )),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 16.w),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white),
                padding: EdgeInsets.only(top: 15.h, bottom: 5.h),
                child: ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  itemBuilder: (_, index) => InkWell(
                    onTap: () {
                      switch (index) {
                        case 0:
                          RouterHelper.routerHelper
                              .routingToSpecificWidgetWithoutPop(
                                  EditProfileScreen());
                          break;
                        case 1:
                          RouterHelper.routerHelper
                              .routingToSpecificWidgetWithoutPop(
                                  AddressScreen());
                          break;
                        case 2:
                          // RouterHelper.routerHelper
                          //     .routingToSpecificWidgetWithoutPop(
                          //     TermsScreen());
                          // PrivacyScreen
                          break;
                        case 3:
                          RouterHelper.routerHelper
                              .routingToSpecificWidgetWithoutPop(TermsScreen());
                          break;
                        case 4:
                          RouterHelper.routerHelper
                              .routingToSpecificWidgetWithoutPop(
                                  PrivacyScreen());
                          break;
                        case 5:
                          // RouterHelper.routerHelper
                          //     .routingToSpecificWidgetWithoutPop(
                          //     ContactUsScreen());
                          break;
                        case 6:
                          RouterHelper.routerHelper
                              .routingToSpecificWidgetWithoutPop(
                                  ChangePasswordScreen());
                          break;
                        case 7:
                          RouterHelper.routerHelper
                              .routingToSpecificWidgetWithoutPop(
                                  ContactUsScreen());
                          break;
                        case 8:
                          RouterHelper.routerHelper
                              .routingToSpecificWidgetWithoutPop(AboutScreen());
                          break;
                        case 10:
                          showDialog(
                              context: context,
                              builder: (_) => DeleteAccountDialog());
                          break;
                        case 11:
                          showDialog(
                              context: context, builder: (_) => LogoutDialog());
                          break;
                      }
                    },
                    child: ProfileWidget(
                      index: index,
                    ),
                  ),
                  itemCount: 12,
                ),
              )
            ],
          ),
        ),
      );
    });
  }
}
