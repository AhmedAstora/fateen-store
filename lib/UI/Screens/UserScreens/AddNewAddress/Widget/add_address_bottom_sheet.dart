import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:twnty2/Helper/Router/router.dart';
import 'package:twnty2/UI/CustomWidget/custom_text.dart';
import 'package:twnty2/UI/CustomWidget/custom_text_field.dart';

import '../../../../CustomWidget/custom_bottom.dart';
import '../../../../Utils/constant.dart';
import '../../CheckOutScreen/check_out_screen.dart';

class AddAddressBottomSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 43.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Color(0xffFCEDEB),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 15,
                    child: Icon(
                      Icons.location_on,
                      color: mainAppColor,
                    ),
                    backgroundColor: Colors.white,
                  ),
                  CustomText(
                    'Gaza, Palestine'.tr(),
                    fontSize: 12.sp,
                    color: mainAppColor,
                  ),
                  Spacer(),
                  Container(
                    height: 27.h,
                    width: 57.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      border: Border.all(color: mainAppColor),
                      color: Colors.white,
                    ),
                    child: Center(
                        child: CustomText(
                      'Change'.tr(),
                      fontSize: 12.sp,
                      color: mainAppColor,
                    )),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Container(
            height: 61.h,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.grey, width: 0.5)),
            child: Padding(
              padding: const EdgeInsets.only(left: 8, right: 8, top: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    'Street Name*'.tr(),
                    fontSize: 12.sp,
                    color: Colors.grey[400],
                  ),
                  CustomText(
                    'Al-Moghrabi St.'.tr(),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 12.h,
          ),
          Row(
            children: [
              Container(
                height: 61.h,
                width: 162.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Colors.grey, width: 0.5)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 8, right: 8, top: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        'Street Name*'.tr(),
                        fontSize: 12.sp,
                        color: Colors.grey[400],
                      ),
                      CustomText(
                        'Al-Moghrabi St.'.tr(),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 12.w,
              ),
              Container(
                height: 61.h,
                width: 162.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Colors.grey, width: 0.5)),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 17),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        'Building'.tr(),
                        color: Colors.grey[500],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 12.h,
          ),
          Row(
            children: [
              Container(
                height: 61.h,
                width: 162.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Colors.grey, width: 0.5)),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 17),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        'Floor'.tr(),
                        color: Colors.grey[500],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 12.w,
              ),
              Container(
                height: 61.h,
                width: 162.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Colors.grey, width: 0.5)),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 17),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        'Flat No.'.tr(),
                        color: Colors.grey[500],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 16.h,
          ),
          CustomText(
            'Address Details'.tr(),
          ),
          SizedBox(
            height: 8.h,
          ),
          Row(
            children: [
              Container(
                height: 45.h,
                width: 106.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  border: Border.all(color: Colors.grey, width: 0.5),
                ),
                child: Center(
                    child: CustomText(
                  'Home'.tr(),
                )),
              ),
              SizedBox(
                width: 8.w,
              ),
              Container(
                height: 45.h,
                width: 106.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  border: Border.all(color: mainAppColor, width: 0.5),
                  color: Color(0xffFCEDEB),
                ),
                child: Center(
                    child: CustomText(
                      'Work'.tr(),
                      color: mainAppColor,
                    )),
              ),
              SizedBox(
                width: 8.w,
              ),
              Container(
                height: 45.h,
                width: 106.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  border: Border.all(color: Colors.grey, width: 0.5),
                ),
                child: Center(
                    child: CustomText(
                      'Others'.tr(),
                    )),
              ),

            ],
          ),
          SizedBox(
            height: 12.h,
          ),
          Container(
            height: 48.h,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.grey, width: 0.5)),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  CustomText(
                    'AddressHouse'.tr(),
                    fontSize: 12.sp,
                    color: Colors.grey[400],
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 60.h,
          ),
          CustomBottom(
            onTap: (){},
            height: 45.0.sp,
            width: 343.0.sp,
            backgroundColor: mainAppColor,
            title: 'Save'.tr(),
            borderRadius: 10,
          ),
        ],
      ),
    );
  }
}
