import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:twnty2/Helper/Router/router.dart';
import 'package:twnty2/UI/Screens/VendorScreens/EditDealsScreen/edit_deals_screen.dart';

import '../../../CustomWidget/custom_text.dart';
import '../../../Utils/constant.dart';

class DeleteDialogWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Container(
        width: 265.w,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                  RouterHelper.routerHelper
                      .routingToSpecificWidgetWithoutPop(EditDealsScreen());
                },
                child: Container(
                  alignment: Alignment.center,
                  height: 35.h,
                  child: CustomText(
                    'Edit'.tr(),
                  ),
                ),
              ),
              Divider(
                thickness: 1,
              ),
              Container(
                  alignment: Alignment.center,
                  height: 35.h,
                  child: CustomText('Delete'.tr())),
              Divider(
                thickness: 1,
              ),
              Container(
                alignment: Alignment.center,
                height: 35.h,
                child: CustomText(
                  'cancel'.tr(),
                  color: mainAppColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
