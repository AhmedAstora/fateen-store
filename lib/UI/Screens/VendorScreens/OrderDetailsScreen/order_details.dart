import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:twnty2/UI/Screens/VendorScreens/OrderDetailsScreen/widget/order_details_widget.dart';

import 'package:twnty2/UI/Utils/constant.dart';
import '../../../CustomWidget/custom_text.dart';

class OrderDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: Icon(
          Icons.keyboard_arrow_left_rounded,
          size: 30,
          color: Colors.black,
        ),
        title: CustomText(
          'Order details'.tr(),
          fontSize: 16.sp,
          color: Colors.black,
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(
              height: 30.h,
            ),
            Row(
              children: [
                Image.asset(
                  'assets/images/box.png',
                  height: 24.h,
                  width: 24.w,
                ),
                SizedBox(
                  width: 10.w,
                ),
                CustomText(
                  'Order details'.tr(),
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w500,
                ),
                SizedBox(
                  width: 10.w,
                ),
                CustomText(
                  '(520 requests)'.tr(),
                  fontSize: 8.sp,
                ),
                Spacer(),
                Container(
                    height: 23.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: mainAppColor),
                    child: MaterialButton(
                      height: 40,
                      onPressed: () {},
                      child: Row(
                        children: [
                          CustomText(
                            'Quick edit'.tr(),
                            color: Colors.white,
                            fontSize: 10.sp,
                          ),
                          SizedBox(
                            width: 5.w,
                          ),
                          Icon(
                            Icons.keyboard_arrow_down_sharp,
                            size: 20,
                            color: Colors.white,
                          )
                        ],
                      ),
                    ))
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            Container(
              height: 1,
              width: MediaQuery.of(context).size.width,
              color: Colors.grey[300],
            ),

            SizedBox(
              height: 25.h,
            ),
            Expanded(
              child: ListView.separated(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  separatorBuilder: (context, index) => SizedBox(
                    height: 12.h,
                  ),
                  itemCount: 8,
                  itemBuilder: (context, index) {
                    return OrderSellerDetailsWidget();
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
