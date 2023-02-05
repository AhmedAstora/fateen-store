import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:twnty2/Helper/Providers/app_provider.dart';
import 'package:twnty2/UI/CustomWidget/custom_bottom.dart';

import '../../../CustomWidget/back_appBar_widget.dart';
import '../../../CustomWidget/custom_text.dart';

class AboutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Provider.of<AppProvider>(context, listen: false).getSettings(context);
    // TODO: implement build
    return Consumer<AppProvider>(builder: (context, provider, _) {
      return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.white,
          leading: BackAppBarWidget(),
          title: CustomText(
            'About us'.tr(),
            fontSize: 16.sp,
            color: Colors.black,
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 16.w),
            child: Column(
              children: [
                SizedBox(
                  height: 16.sp,
                ),
                Text(
                    "AboutUsT1".tr()),
                SizedBox(
                  height: 16.sp,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          'assets/images/facebook1.png',
                          height: 24.h,
                          width: 24.w,
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        CustomText(
                          'Facebook'.tr(),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Image.asset(
                          'assets/images/twitter1.png',
                          height: 24.h,
                          width: 24.w,
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        CustomText(
                          'Twitter'.tr(),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Image.asset(
                          'assets/images/whatsapp1.png',
                          height: 24.h,
                          width: 24.w,
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        CustomText(
                          'WhatsApp'.tr(),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 50.h,
                ),
                CustomBottom(
                  title: "Done".tr(),
                ),
                SizedBox(
                  height: 50.h,
                ),
              ],
            ),
          ),
        ),
      );
    });
  }
}
