import 'package:dotted_border/dotted_border.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:twnty2/Helper/Providers/app_provider.dart';

import '../../../CustomWidget/custom_bottom.dart';
import '../../../CustomWidget/custom_text.dart';
import '../../../CustomWidget/slider/defult_form_filed.dart';
import '../../../Utils/constant.dart';

class AddADealScreen2 extends StatelessWidget {

  TextEditingController priceController = TextEditingController();
  TextEditingController priceMarketController = TextEditingController();
  TextEditingController quantityController = TextEditingController();
  TextEditingController categoryController = TextEditingController();
  TextEditingController priceAfterController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return  Consumer<AppProvider>(
      builder: (context,provider,_) {
        return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      CustomText(
                        'Product price'.tr(),
                        fontSize: 12.sp,
                      ),
                      Spacer(),
                      CustomText(
                        'Edit'.tr(),
                        fontSize: 12.sp,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  DefaultTextField(
                      paddingV: 20.h,
                      paddingH: 15.w,
                      maxLines: 1,
                      onClick: () {},
                      hintText: '',
                      isPassword: false,
                      fillColor: Colors.white,
                      fontsize: 14.sp,
                      filled: true,
                      controller: priceController),
                  SizedBox(
                    height: 20.h,
                  ),
                  Row(
                    children: [
                      CustomText(
                        'Price after platform commission and tax'.tr(),
                        fontSize: 12.sp,
                      ),
                      Spacer(),
                      CustomText(
                        'Edit'.tr(),
                        fontSize: 12.sp,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  DefaultTextField(
                      paddingV: 20.h,
                      paddingH: 15.w,
                      maxLines: 1,
                      onClick: () {},
                      hintText: '',
                      isPassword: false,
                      fillColor: Colors.white,
                      fontsize: 14.sp,
                      filled: true,
                      controller: priceAfterController),
                  SizedBox(
                    height: 20.h,
                  ),
                  Row(
                    children: [
                      CustomText(
                        'Price in the market'.tr(),
                        fontSize: 12.sp,
                      ),
                      Spacer(),
                      CustomText(
                        'Edit'.tr(),
                        fontSize: 12.sp,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  DefaultTextField(
                      paddingV: 20.h,
                      paddingH: 15.w,
                      maxLines: 1,
                      onClick: () {},
                      hintText: '',
                      isPassword: false,
                      fillColor: Colors.white,
                      fontsize: 14.sp,
                      filled: true,
                      controller: priceMarketController),
                  SizedBox(
                    height: 20.h,
                  ),
                  Row(
                    children: [
                      CustomText(
                        'Quantity'.tr(),
                        fontSize: 12.sp,
                      ),
                      Spacer(),
                      CustomText(
                        'Edit'.tr(),
                        fontSize: 12.sp,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  DefaultTextField(
                      paddingV: 20.h,
                      paddingH: 15.w,
                      maxLines: 1,
                      onClick: () {},
                      hintText: '',
                      isPassword: false,
                      fillColor: Colors.white,
                      fontsize: 14.sp,
                      filled: true,
                      controller: quantityController),
                  SizedBox(
                    height: 20.h,
                  ),
                  Row(
                    children: [
                      CustomText(
                        'Category'.tr(),
                        fontSize: 12.sp,
                      ),
                      Spacer(),
                      CustomText(
                        'Edit'.tr(),
                        fontSize: 12.sp,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  DefaultTextField(
                      paddingV: 20.h,
                      paddingH: 15.w,
                      maxLines: 1,
                      onClick: () {},
                      hintText: 'Other'.tr(),
                      isPassword: false,
                      suffix: Icon(Icons.keyboard_arrow_down_sharp),
                      fillColor: Colors.white,
                      fontsize: 14.sp,
                      filled: true,
                      controller: categoryController),
                  SizedBox(
                    height: 20.h,
                  ),
                  Row(
                    children: [
                      Image.asset('assets/images/box.png',height: 24.h,width: 24.w,),
                      SizedBox(
                        width: 10.w,
                      ),
                      CustomText('Man'.tr(),),
                      SizedBox(
                        width: 20.w,
                      ),
                      Image.asset('assets/images/box.png',height: 24.h,width: 24.w,),
                      SizedBox(
                        width: 10.w,
                      ),
                      CustomText('Women'.tr(),),
                      SizedBox(
                        width: 20.w,
                      ),
                      Image.asset('assets/images/box.png',height: 24.h,width: 24.w,),
                      SizedBox(
                        width: 10.w,
                      ),
                      CustomText('Children'.tr(),),
                    ],
                  ),
                  SizedBox(
                    height: 50.h,
                  ),
                  Center(
                    child: CustomBottom(
                      title: "Next".tr(),
                      height: 48.h,
                      width: 309.w,
                      onTap: () {
                        provider.cureentStep++;
                        provider.notifyListeners();
                      },
                    ),
                  ),
                  SizedBox(
                    height: 120.h,
                  ),
                ],


        );
      }
    );
  }
}
