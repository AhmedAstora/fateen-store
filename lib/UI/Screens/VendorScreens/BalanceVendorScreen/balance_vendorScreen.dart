import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../CustomWidget/back_appBar_widget.dart';
import '../../../CustomWidget/custom_text.dart';
import '../HomeSellerScreen/widget/home_seller_widget.dart';
import '../RequestsSellerScreen/widget/complete_requests_widget.dart';
import 'list_balance_widget.dart';

class BalanceVendorScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        leading: BackAppBarWidget(),
        title: CustomText(
          'balance'.tr(),
          fontSize: 16.sp,
          color: Colors.black,
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20.h,
          ),
          Row(
            children: [
              SizedBox(
                width: 16.w,
              ),
              HomeSellerWidget(
                title: '\$850',
                color: Color(0xff44B66B),
                subTitle: 'Total earnings',
                progress: .4,
              ),
              SizedBox(
                width: 8.w,
              ),
              HomeSellerWidget(
                title: '20',
                color: Color(0xff3479D1),
                subTitle: 'The number of \nongoing deals',
                progress: .7,
              ),
              SizedBox(
                width: 16.w,
              ),
            ],
          ),
          Expanded(
            child: ListView.separated(
                padding: EdgeInsets.symmetric(vertical: 40,horizontal: 20),
                separatorBuilder: (context, index) => SizedBox(
                  height: 12.h,
                ),
                itemCount: 2,
                itemBuilder: (context, index) {
                  return ListBalanceWidget();
                }),
          ),
        ],
      ),
    );
  }
}
