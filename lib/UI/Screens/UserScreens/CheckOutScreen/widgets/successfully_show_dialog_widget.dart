import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:twnty2/Helper/Router/router.dart';

import '../../../../CustomWidget/custom_bottom.dart';
import '../../../../CustomWidget/custom_text.dart';
import '../../../../Utils/constant.dart';
import '../view_invoice_screen.dart';

class SuccessfullyCodeDialogWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Container(
        height: 360.h,
        width: 400.w,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          child: Column(
            children: [
              Align(
                  alignment: Alignment.topLeft,
                  child: Icon(
                    Icons.close,
                  )),
              CircleAvatar(
                radius: 45,
                backgroundColor: Color(0xff29326e),
                child: Icon(
                  Icons.check,
                  size: 60,
                  color: Colors.white,
                ),
              ),
              Wrap(
                children: [
                  Center(
                      child: CustomText(
                    'Thank you !'.tr(),
                    fontSize: 16.sp,
                  )),
                  Center(
                      child: CustomText(
                    'Note: You will be notified if the quantity is '.tr(),
                    fontSize: 16.sp,
                    color: Colors.grey[500],
                  )),
                  Center(
                      child: CustomText(
                    'sold out.'.tr(),
                    fontSize: 16.sp,
                    color: Colors.grey[500],
                  )),
                  Center(
                      child: CustomText(
                    'In the event that the sale is not made, the '.tr(),
                    fontSize: 16.sp,
                    color: Colors.grey[500],
                  )),
                  Center(
                      child: CustomText(
                    'money paid will be refunded.'.tr(),
                    fontSize: 16.sp,
                    color: Colors.grey[500],
                  )),
                ],
              ),
              SizedBox(
                height: 25.h,
              ),
              CustomBottom(
                onTap: () {
                  RouterHelper.routerHelper
                      .routingToSpecificWidgetWithoutPop(ViewInvoiceScreen());
                },
                height: 45.0.sp,
                width: 213.0.sp,
                backgroundColor: mainAppColor,
                title: 'View the invoice'.tr(),
                borderRadius: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
