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
  TextEditingController streetNameController = TextEditingController();
  TextEditingController streetName1Controller = TextEditingController();
  TextEditingController buildingController = TextEditingController();
  TextEditingController floorController = TextEditingController();
  TextEditingController flatNoController = TextEditingController();
  TextEditingController addressController = TextEditingController();
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
          CustomTextField(
            controller: streetNameController,
            onClick: () {},
            fontsize: 14.sp,
            hintText: 'Street Name*'.tr(),
            isPassword: false,
            height: 20,
            paddingV: 20.h,
            paddingH: 15.w,

          ),
          SizedBox(
            height: 12.h,
          ),
          Row(
            children: [
              Expanded(
                child: CustomTextField(
                  controller: streetName1Controller,
                  onClick: () {},
                  fontsize: 14.sp,
                  hintText: 'Street Name*'.tr(),
                  isPassword: false,
                  height: 20,
                  paddingV: 20.h,

                ),
              ),
              SizedBox(
                width: 12.w,
              ),
              Expanded(
                child: CustomTextField(
                  controller: buildingController,
                  onClick: () {},
                  fontsize: 14.sp,
                  hintText: 'Building'.tr(),
                  isPassword: false,
                  height: 20,
                  paddingV: 20.h,
                  paddingH: 15.w,

                ),
              ),
            ],
          ),
          SizedBox(
            height: 12.h,
          ),
          Row(
            children: [
              Expanded(
                child: CustomTextField(
                  controller: floorController,
                  onClick: () {},
                  fontsize: 14.sp,
                  hintText: 'Floor'.tr(),
                  isPassword: false,
                  height: 20,
                  paddingV: 20.h,

                ),
              ),
              SizedBox(
                width: 12.w,
              ),
              Expanded(
                child: CustomTextField(
                  controller: flatNoController,
                  onClick: () {},
                  fontsize: 14.sp,
                  hintText: 'Flat No.'.tr(),
                  isPassword: false,
                  height: 20,
                  paddingV: 20.h,
                  paddingH: 15.w,

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
          CustomTextField(
            controller: addressController,
            onClick: () {},
            fontsize: 14.sp,
            hintText: 'Address Nickname “Mother’s house”'.tr(),
            isPassword: false,
            height: 20,
            paddingV: 20.h,
            paddingH: 15.w,

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
