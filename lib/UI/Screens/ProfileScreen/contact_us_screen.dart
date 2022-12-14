import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:twnty2/Helper/Providers/app_provider.dart';
import 'package:twnty2/UI/CustomWidget/custom_bottom.dart';

import '../../CustomWidget/back_appBar_widget.dart';
import '../../CustomWidget/custom_text.dart';
import '../../CustomWidget/custom_text_field.dart';

class ContactUsScreen extends StatelessWidget {
  GlobalKey<FormState> contactKey = GlobalKey<FormState>();

  signupValidate() {
    bool isSuccess = contactKey.currentState!.validate();
    return isSuccess;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Consumer<AppProvider>(builder: (context, provider, _) {
      return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.white,
          leading: BackAppBarWidget(),
          title: CustomText(
            'Contact us',
            fontSize: 16.sp,
            color: Colors.black,
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Form(
            key: contactKey,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 25.h,
                  ),
                  Text(
                    'We will respond to you in Email',
                    style: TextStyle(fontSize: 12.sp),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  CustomTextField(
                      validationFun: provider.nullValidator,
                      height: 240.h,
                      paddingV: 20.h,
                      paddingH: 15.w,
                      maxLines: 11,
                      onClick: () {},
                      hintText: 'Tell us how we can help',
                      isPassword: false,
                      fillColor: Color(0xffF4F4F4),
                      fontsize: 14.sp,
                      filled: true,
                      controller: provider.contactUsController),
                  SizedBox(
                    height: 286.h,
                  ),
                  CustomBottom(
                    title: "Done",
                    onTap: () {
                      if (signupValidate()) {
                        // provider.contactUs(context);
                      }
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    });
  }
}
