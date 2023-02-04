import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../CustomWidget/back_appBar_widget.dart';
import '../../../CustomWidget/custom_bottom.dart';
import '../../../CustomWidget/custom_text.dart';
import '../../../CustomWidget/custom_text_field.dart';
import '../../../Utils/constant.dart';


class PaymentScreen extends StatelessWidget {

  TextEditingController cardNumberController = TextEditingController();
  TextEditingController expiryDateController = TextEditingController();
  TextEditingController cvvController = TextEditingController();
  TextEditingController holderNameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      persistentFooterButtons: [
        Center(
          child: CustomBottom(
            onTap: () {},
            height: 45.0.sp,
            width: 271.0.sp,
            backgroundColor: mainAppColor,
            title: 'Confirm',
            borderRadius: 10,
          ),
        ),
      ],
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        leading: BackAppBarWidget(),
        title: CustomText(
          'Price',
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
            CustomText('Choose your payment method'),
            SizedBox(
              height: 20.h,
            ),
            Container(
              child: Row(
                children: [
                  Container(
                      height: 41.h,
                      width: 97.w,
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xff215CA8)),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/visa.png',
                            height: 24.h,
                          ),
                        ],
                      )
                  ),
                  SizedBox(
                    width: 50.w,
                  ),
                  Image.asset(
                    'assets/images/mastercard.png',
                    height: 30.h,
                  ),
                  SizedBox(
                    width: 50.w,
                  ),
                  Image.asset(
                    'assets/images/mada.png',
                    height: 24.h,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            CustomText('Card number'),
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
                CustomText('Expiry date'),
                SizedBox(
                  width: MediaQuery
                      .of(context)
                      .size
                      .width / 3.32,
                ),
                CustomText('CVV'),
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
                    hintText: 'YY/MM',
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
            CustomText('Holder name'),
            SizedBox(
              height: 10.h,
            ),
            CustomTextField(
              controller: holderNameController,
              onClick: () {},
              fontsize: 14.sp,
              hintText: 'MATT SUTHERLAND',
              isPassword: false,
            ),
          ],
        ),
      ),
    );
  }
}
