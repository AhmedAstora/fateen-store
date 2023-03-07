import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:twnty2/Helper/Providers/app_provider.dart';
import 'package:twnty2/Helper/Router/router.dart';
import 'package:twnty2/Helper/SharedPreferance/shared_preferance.dart';
import 'package:twnty2/UI/CustomWidget/custom_bottom.dart';
import 'package:twnty2/UI/Utils/constant.dart';

class DeleteProfileDialog extends StatelessWidget {
  Function? onClick;

  DeleteProfileDialog({this.onClick});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Consumer<AppProvider>(builder: (context, provider, _) {
      return Dialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Container(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 15.h,
              ),
              CircleAvatar(
                radius: 30,
                backgroundColor: Color(0x3ced8eff),
                child: Image.asset(
                  'assets/images/delete_icon.png',
                  height: 24.h,
                  width: 20.w,
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 16.w),
                child: Text(
                  'Are you sure to delete the account'.tr(),
                  style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                      height: 1.9),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomBottom(
                    title: 'Delete account',
                    style: TextStyle(color: mainAppColor),
                    height: 45.h,
                    width: 127.w,
                    backgroundColor: Colors.white,
                    borderRadius: 10,
                    border: mainAppColor,
                  ),
                  SizedBox(
                    width: 15.w,
                  ),
                  CustomBottom(
                    title: 'Cancel',
                    height: 45.h,
                    width: 127.w,
                    borderRadius: 10,
                  )
                ],
              ),
              SizedBox(
                height: 15.h,
              ),
            ],
          ),
        ),
      );
    });
  }
}
