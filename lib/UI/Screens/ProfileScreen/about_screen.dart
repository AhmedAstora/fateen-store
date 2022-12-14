import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:twnty2/Helper/Providers/app_provider.dart';
import 'package:twnty2/UI/CustomWidget/custom_bottom.dart';

import '../../CustomWidget/back_appBar_widget.dart';
import '../../CustomWidget/custom_text.dart';


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
            'About us',
            fontSize: 16.sp,
            color: Colors.black,
          ),
          centerTitle: true,
        ),
        body:  SingleChildScrollView(
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 16.w),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 16.sp,
                      ),
                      Text("Lorem ipsum dolor sit amet, consectetur adipis cing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad ms veniam, quis nostrud exercitation ullamco nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit cillum dolore eu fugiat nulla pariatur.\n\n Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet,  consectetur  adipis cing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. \n\nUt enim ad ms veniam, quis nostrud exercitation ullamco nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit cillum dolore eu fugiat nulla pariatur.Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."),
                      SizedBox(
                        height: 50.h,
                      ),
                      CustomBottom(title: "Done",),
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
