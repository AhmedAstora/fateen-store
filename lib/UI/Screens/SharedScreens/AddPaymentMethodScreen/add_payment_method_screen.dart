import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:twnty2/UI/CustomWidget/custom_bottom.dart';

import '../../../CustomWidget/back_appBar_widget.dart';
import '../../../CustomWidget/custom_text.dart';
import '../../../CustomWidget/custom_text_field.dart';

class AddPaymentMethodScreen extends StatelessWidget {

  TextEditingController cardNumberController = TextEditingController();
  TextEditingController expiryDateController = TextEditingController();
  TextEditingController cvvController = TextEditingController();
  TextEditingController holderNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        leading: BackAppBarWidget(
        ),
        title: CustomText(
          'Paid'.tr(),
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
            CustomText('Add payment method'.tr()),
            SizedBox(
              height: 20.h,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                border: Border.all(color: Colors.grey.shade300),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Image.asset('assets/images/visa.png',height:20.h ,width: 60.w,),
                        Spacer(),
                        CustomBottom(
                          height: 26.h,
                          width: 64.w,
                          title: 'Add'.tr(),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Container(
                      height: 1,
                      width: MediaQuery.of(context).size.width,
                      color: Colors.grey.shade300,
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    CustomText('Card number'.tr(),fontSize: 12.sp,),
                    SizedBox(
                      height: 10.h,
                    ),
                    CustomTextField(
                      controller: cardNumberController,
                      onClick: () {},
                      fontsize: 14.sp,
                      hintText: '1234   1234   1234   1234',
                      isPassword: false,
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    Row(
                      children: [
                        CustomText('Expiry date'.tr()),
                        SizedBox(
                          width: MediaQuery
                              .of(context)
                              .size
                              .width / 3.32,
                        ),
                        CustomText('CVV'.tr()),
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: CustomTextField(
                            controller: expiryDateController,
                            onClick: () {},
                            fontsize: 14.sp,
                            hintText: 'YY/MM'.tr(),
                            isPassword: false,
                          ),
                        ),
                        SizedBox(
                          width: 12.w,
                        ),
                        Expanded(
                          child: CustomTextField(
                            controller: cvvController,
                            onClick: () {},
                            fontsize: 14.sp,
                            hintText: '***',
                            isPassword: false,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    CustomText('Holder name'.tr()),
                    SizedBox(
                      height: 10.h,
                    ),
                    CustomTextField(
                      controller: holderNameController,
                      onClick: () {},
                      fontsize: 14.sp,
                      hintText: 'MATT SUTHERLAND'.tr(),
                      isPassword: false,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 16.h,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                border: Border.all(color: Colors.grey.shade300),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Image.asset('assets/images/mastercard.png',height: 36.h,width: 60.w,),
                    Spacer(),
                    CustomBottom(
                      height: 26.h,
                      width: 64.w,
                      title: 'Add'.tr(),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 16.h,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                border: Border.all(color: Colors.grey.shade300),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Image.asset('assets/images/mada.png',height: 36.h,width: 60.w,),
                    Spacer(),
                    CustomBottom(
                      height: 26.h,
                      width: 64.w,
                      title: 'Add'.tr(),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
