import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:twnty2/UI/CustomWidget/back_appBar_widget.dart';

import '../../../CustomWidget/custom_text.dart';


class EmptyCartScreen extends StatelessWidget {
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
          'My Cart',
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
            'assets/images/mycartempty.png',
            height: 182.h,
          )),
          SizedBox(
            height: 65.h,
          ),
          CustomText(
              'Enter your address to receive\n products to your doorstep')
        ],
      ),
    );
  }
}
