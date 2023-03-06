import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:twnty2/UI/Screens/SharedScreens/PaymentScreen/payment_screen.dart';

import '../../../../Helper/Router/router.dart';
import '../../../CustomWidget/back_appBar_widget.dart';
import '../../../CustomWidget/custom_text.dart';

class AddPaymentScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        leading: BackAppBarWidget(),
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
            InkWell(
              onTap: () => RouterHelper.routerHelper
                  .routingToSpecificWidgetWithoutPop(PaymentScreen()),
              child: Container(
                height: 54.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Color(0x1D000000)),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/images/visa.png',
                        height: 18.h,
                      ),
                      Spacer(),
                      Icon(Icons.more_horiz)
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            InkWell(
              onTap: () => RouterHelper.routerHelper
                  .routingToSpecificWidgetWithoutPop(PaymentScreen()),
              child: Container(
                height: 54.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Color(0x1D000000)),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/images/mastercard.png',
                        height: 36.h,
                      ),
                      Spacer(),
                      Icon(Icons.more_horiz)
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            InkWell(
              onTap: () => RouterHelper.routerHelper
                  .routingToSpecificWidgetWithoutPop(PaymentScreen()),
              child: Container(
                height: 54.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Color(0x1D000000)),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/images/mada.png',
                        height: 21.h,
                      ),
                      Spacer(),
                      Icon(Icons.more_horiz)
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
