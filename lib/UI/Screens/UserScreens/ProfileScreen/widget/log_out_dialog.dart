import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:twnty2/Helper/Router/router.dart';
import 'package:twnty2/Helper/SharedPreferance/shared_preferance.dart';

import '../../SignInScreen/sign_in_screen.dart';

class LogoutDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
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
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16.w),
              child: Text(
                'Are you sure, you want to Log Out from this device?',
                style: TextStyle(
                    fontSize: 14.sp, fontWeight: FontWeight.w500, height: 1.9),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            Divider(
              height: 1.2,
              thickness: .9,
              color: Colors.grey.withOpacity(.3),
            ),
            InkWell(
              onTap: () {
                SpHelper.spHelper.setTokenId('');
                RouterHelper.routerHelper
                    .routingReplacementUntil(SignInScreen());
              },
              child: Container(
                alignment: Alignment.center,
                height: 50.h,
                width: double.infinity,
                child: Text(
                  'Log out',
                  style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: Colors.red),
                ),
              ),
            ),
            Divider(
              height: 1.2,
              thickness: .9,
              color: Colors.grey.withOpacity(.3),
            ),
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                height: 50.h,
                alignment: Alignment.center,
                width: double.infinity,
                child: Text(
                  'Cancel',
                  style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: Colors.black),
                ),
              ),
            ),
            SizedBox(
              height: 5.h,
            ),
          ],
        ),
      ),
    );
  }
}
