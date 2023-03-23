import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:twnty2/Helper/Providers/app_provider.dart';
import 'package:twnty2/Helper/SharedPreferance/shared_preferance.dart';
import 'package:twnty2/UI/Utils/constant.dart';

class ProfileVendorWidget extends StatelessWidget {
  int? index;

  ProfileVendorWidget({this.index});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Consumer<AppProvider>(builder: (context, provider, _) {
      return Column(
        children: [
          Container(
            height: 45.h,
            color: Colors.white,
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Row(
              children: [
                index == 11
                    ? Image.asset(provider.imagesVendorProfile[index!],
                        width: 16.w, height: 16.h, color: Colors.red)
                    : Image.asset(
                        provider.imagesVendorProfile[index!],
                        width: 16.w,
                        height: 16.h,
                      ),
                SizedBox(
                  width: 10.w,
                ),
                Text(
                  provider.titleVendorProfile[index!].tr(),
                  style: TextStyle(
                      fontSize: 14.sp,
                      color: index == 12
                          ? Colors.red
                          : index == 11
                              ? Colors.red
                              : Colors.black),
                ),
                Spacer(),
                index == 6
                    ? InkWell(
                        onTap: () async {
                          if (context.locale == Locale('en')) {
                            SpHelper.spHelper.setLang('ar');
                            await context.setLocale(Locale("ar"));

                            provider.notifyListeners();
                          } else {
                            SpHelper.spHelper.setLang('en');
                            await context.setLocale(Locale("en"));

                            provider.notifyListeners();
                          }
                        },
                        child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.grey[300]),
                            child: Row(
                              children: [
                                Container(
                                    width: 34.w,
                                    height: 20.h,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color:
                                            SpHelper.spHelper.getLang() == 'ar'
                                                ? Colors.transparent
                                                : mainAppColor),
                                    child: Text(
                                      'En',
                                      style: TextStyle(
                                          fontSize: 12.sp,
                                          color: SpHelper.spHelper.getLang() ==
                                                  'ar'
                                              ? Colors.black
                                              : Colors.white),
                                    )),
                                Container(
                                    width: 34.w,
                                    height: 20.h,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color:
                                            SpHelper.spHelper.getLang() == 'ar'
                                                ? mainAppColor
                                                : Colors.transparent),
                                    child: Text(
                                      'Ar',
                                      style: TextStyle(
                                          fontSize: 12.sp,
                                          color: SpHelper.spHelper.getLang() ==
                                                  'ar'
                                              ? Colors.white
                                              : Colors.black),
                                    )),
                              ],
                            )),
                      )
                    : Visibility(
                        visible: index == 11 || index == 12 ? false : true,
                        child: Icon(
                          Icons.arrow_forward_ios_rounded,
                          size: 13,
                        ),
                      )
              ],
            ),
          ),
          SizedBox(
            height: 5.h,
          ),
          Visibility(
            visible: true,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Divider(
                height: 1,
                color: Colors.grey.withOpacity(.4),
              ),
            ),
          )
        ],
      );
    });
  }
}
