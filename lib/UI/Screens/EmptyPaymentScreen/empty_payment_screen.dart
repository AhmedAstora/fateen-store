import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:twnty2/UI/CustomWidget/back_appBar_widget.dart';

import '../../CustomWidget/custom_bottom.dart';
import '../../CustomWidget/custom_text.dart';
import '../../Utils/constant.dart';
import '../CartScreen/widget/cart_buy_bottom_sheet.dart';

class EmptyPaymentScreen extends StatelessWidget {
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
            title: 'Add',
            borderRadius: 10,
          ),
        ),
      ],
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        leading: BackAppBarWidget(
        ),
        title: CustomText(
          'payment cards',
          fontSize: 16.sp,
          color: Colors.black,
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 40.h,
          ),
          Center(
              child: Image.asset(
                'assets/images/emptypayment.png',
                height: 182.h,
              )),
          SizedBox(
            height: 65.h,
          ),
          CustomText(
              'No payment cards entered')
        ],
      ),
    );
  }
}
