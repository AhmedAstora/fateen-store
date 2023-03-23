import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:twnty2/UI/CustomWidget/custom_bottom.dart';

import '../../../CustomWidget/back_appBar_widget.dart';
import '../../../CustomWidget/custom_text.dart';
import '../BranchesScreen/widget/text_field_widget.dart';

class RegistrationDataScreen extends StatelessWidget {
  TextEditingController taxNumberController = TextEditingController();
  TextEditingController taxCertificateController = TextEditingController();
  TextEditingController commercialNumberController = TextEditingController();
  TextEditingController commercialCertificateController =
      TextEditingController();
  TextEditingController iBANNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        leading: BackAppBarWidget(),
        title: CustomText(
          'Registration data'.tr(),
          fontSize: 16.sp,
          color: Colors.black,
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20.h,
            ),
            CustomText(
              'Tax Number',
              fontSize: 12.sp,
            ),
            SizedBox(
              height: 10.h,
            ),
            TextFieldWidget(
              controller: taxNumberController,
            ),
            SizedBox(
              height: 20.h,
            ),
            CustomText(
              'Tax certificate',
              fontSize: 12.sp,
            ),
            SizedBox(
              height: 10.h,
            ),
            TextFieldWidget(
                controller: taxCertificateController,
                suffix: Image.asset(
                  'assets/images/upload-btn.png',
                  height: 16.h,
                  width: 16.w,
                )),
            SizedBox(
              height: 20.h,
            ),
            CustomText(
              'Commercial number',
              fontSize: 12.sp,
            ),
            SizedBox(
              height: 10.h,
            ),
            TextFieldWidget(
              controller: commercialNumberController,
            ),
            SizedBox(
              height: 20.h,
            ),
            CustomText(
              'Commercial certificate',
              fontSize: 12.sp,
            ),
            SizedBox(
              height: 10.h,
            ),
            TextFieldWidget(
                controller: commercialCertificateController,
                suffix: Image.asset(
                  'assets/images/upload-btn.png',
                  height: 16.h,
                  width: 16.w,
                )),
            SizedBox(
              height: 20.h,
            ),
            CustomText(
              'IBAN number ',
              fontSize: 12.sp,
            ),
            SizedBox(
              height: 10.h,
            ),
            TextFieldWidget(
              controller: iBANNumberController,
            ),
            SizedBox(
              height: 40.h,
            ),
            Center(
              child: CustomBottom(
                height: 45.h,
                width: 271.w,
                title: 'Save',
              ),
            )
          ],
        ),
      ),
    );
  }
}
