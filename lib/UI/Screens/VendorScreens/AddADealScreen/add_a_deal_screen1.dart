import 'package:dotted_border/dotted_border.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:twnty2/Helper/Providers/app_provider.dart';

import '../../../CustomWidget/custom_bottom.dart';
import '../../../CustomWidget/custom_text.dart';
import '../../../CustomWidget/slider/defult_form_filed.dart';
import '../../../Utils/constant.dart';

class AddADealScreen1 extends StatelessWidget {
  TextEditingController nameController = TextEditingController();
  TextEditingController transactionDateController = TextEditingController();
  TextEditingController dealController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Consumer<AppProvider>(builder: (context, provider, _) {
      return Container(
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CustomText(
              'Photo'.tr(),
              fontSize: 12.sp,
            ),
            SizedBox(
              height: 7.h,
            ),
            Row(
              children: [
                Container(
                  height: 71.h,
                  width: 70.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Image.asset(
                        'assets/images/mycart.png',
                        height: 75,
                        width: 75,
                        fit: BoxFit.cover,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 30, bottom: 35),
                        child: CircleAvatar(
                          radius: 12,
                          backgroundColor: Color(0x90e0dfdf),
                          child: Icon(
                            Icons.delete,
                            size: 18,
                            color: Color(0xff595959),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 15.w,
                ),
                Expanded(
                  child: DottedBorder(
                    color: Colors.grey,
                    radius: Radius.circular(5),
                    borderType: BorderType.RRect,
                    child: Container(
                      height: 65.h,
                      child: Stack(
                        alignment: Alignment.topRight,
                        children: [
                          Center(
                            child: Image.asset(
                              'assets/images/addimage.png',
                              height: 26.h,
                              width: 26.w,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 15.w,
                ),
                Expanded(
                  child: DottedBorder(
                    color: Colors.grey,
                    radius: Radius.circular(5),
                    borderType: BorderType.RRect,
                    child: Container(
                      height: 65.h,
                      child: Stack(
                        alignment: Alignment.topRight,
                        children: [
                          Center(
                            child: Image.asset(
                              'assets/images/addimage.png',
                              height: 26.h,
                              width: 26.w,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 15.w,
                ),
                Expanded(
                  child: DottedBorder(
                    color: Colors.grey,
                    radius: Radius.circular(5),
                    borderType: BorderType.RRect,
                    child: Container(
                      height: 65.h,
                      child: Stack(
                        alignment: Alignment.topRight,
                        children: [
                          Center(
                            child: Image.asset(
                              'assets/images/addimage.png',
                              height: 26.h,
                              width: 26.w,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            CustomText(
              'Product name'.tr(),
              fontSize: 12.sp,
            ),
            SizedBox(
              height: 10.h,
            ),
            DefaultTextField(
                paddingV: 20.h,
                paddingH: 15.w,
                maxLines: 1,
                onClick: () {},
                hintText: '',
                isPassword: false,
                fillColor: Colors.white,
                fontsize: 14.sp,
                filled: true,
                controller: nameController),
            SizedBox(
              height: 20.h,
            ),
            CustomText(
              'The start date of the transaction'.tr(),
              fontSize: 12.sp,
            ),
            SizedBox(
              height: 10.h,
            ),
            DefaultTextField(
                paddingV: 20.h,
                paddingH: 15.w,
                maxLines: 1,
                onClick: () {},
                hintText: '',
                suffix: Icon(Icons.wallet_travel),
                isPassword: false,
                fillColor: Colors.white,
                fontsize: 14.sp,
                filled: true,
                controller: transactionDateController),
            SizedBox(
              height: 20.h,
            ),
            CustomText(
              'The expiry date of the deal'.tr(),
              fontSize: 12.sp,
            ),
            SizedBox(
              height: 10.h,
            ),
            DefaultTextField(
                paddingV: 20.h,
                paddingH: 15.w,
                maxLines: 1,
                onClick: () {},
                hintText: '',
                isPassword: false,
                suffix: Icon(Icons.wallet_travel),
                fillColor: Colors.white,
                fontsize: 14.sp,
                filled: true,
                controller: dealController),
            SizedBox(
              height: 70.h,
            ),
            Center(
              child: CustomBottom(
                title: "Next".tr(),
                height: 48.h,
                width: 309.w,
                onTap: () {
                  provider.cureentStep++;
                  provider.notifyListeners();
                },
              ),
            ),
            SizedBox(
              height: 120.h,
            ),
          ],
        ),
      );
    });
  }
}
