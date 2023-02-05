import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:twnty2/Helper/Providers/app_provider.dart';
import 'package:twnty2/UI/CustomWidget/custom_bottom.dart';

import '../../../CustomWidget/back_appBar_widget.dart';
import '../../../CustomWidget/custom_text.dart';
import '../../../CustomWidget/custom_text_field.dart';



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
            'Contact us'.tr(),
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
                    'We will respond to you in Email'.tr(),
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
                      hintText: 'Tell us how we can help'.tr(),
                      isPassword: false,
                      fillColor: Color(0xffF4F4F4),
                      fontsize: 14.sp,
                      filled: true,
                      controller: provider.contactUsController),
                  SizedBox(
                    height: 30.h,
                  ),
                  Row(
                    children: [
                      Image.asset('assets/images/phone.png',height: 17.h,width: 17.w,),
                      SizedBox(
                        width: 20.w,
                      ),
                      CustomText('Mobile service for suppliers and merchants'.tr(),fontSize: 12.sp,),
                    ],
                  ),
                  SizedBox(
                    height: 12.h,
                  ),
                  Container(
                    height: 1,
                    color: Colors.grey[300],
                  ),
                  SizedBox(
                    height: 12.h,
                  ),
                  Row(
                    children: [
                      Image.asset('assets/images/phone.png',height: 17.h,width: 17.w,),
                      SizedBox(
                        width: 20.w,
                      ),
                      CustomText('Customer service contact'.tr(),fontSize: 12.sp,),
                    ],
                  ),
                  SizedBox(
                    height: 12.h,
                  ),
                  Container(
                    height: 1,
                    color: Colors.grey[300],
                  ),
                  SizedBox(
                    height: 12.h,
                  ),
                  Row(
                    children: [
                      Image.asset('assets/images/whatsappicon.png',height: 17.h,width: 17.w,),
                      SizedBox(
                        width: 20.w,
                      ),
                      CustomText('Whatsapp customer service'.tr(),fontSize: 12.sp,),
                    ],
                  ),
                  SizedBox(
                    height: 12.h,
                  ),
                  Container(
                    height: 1,
                    color: Colors.grey[300],
                  ),
                  SizedBox(
                    height: 12.h,
                  ),
                  Row(
                    children: [
                      Image.asset('assets/images/massege.png',height: 17.h,width: 17.w,),
                      SizedBox(
                        width: 20.w,
                      ),
                      CustomText('Whatsapp customer service'.tr(),fontSize: 12.sp,),
                    ],
                  ),
                  SizedBox(
                    height: 12.h,
                  ),
                  Container(
                    height: 1,
                    color: Colors.grey[300],
                  ),
                  SizedBox(
                    height: 100.h,
                  ),
                  Center(
                    child: CustomBottom(
                      title: "Contact us".tr(),
                      height: 45.h,
                      width: 271.w,
                      onTap: () {
                        if (signupValidate()) {
                          // provider.contactUs(context);
                        }
                      },
                    ),
                  ),
                  SizedBox(
                    height: 120.h,
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
