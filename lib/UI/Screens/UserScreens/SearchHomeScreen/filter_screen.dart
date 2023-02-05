import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:twnty2/Helper/Providers/app_provider.dart';
import 'package:twnty2/UI/CustomWidget/slider/defult_form_filed.dart';

import '../../../../Helper/SharedPreferance/shared_preferance.dart';
import '../../../CustomWidget/custom_bottom.dart';
import '../../../CustomWidget/custom_text.dart';
import '../../../CustomWidget/custom_text_field.dart';
import '../../../Utils/constant.dart';
import '../CartScreen/widget/cart_buy_bottom_sheet.dart';

class FilterScreen extends StatelessWidget {
  TextEditingController StoteController = TextEditingController();
  TextEditingController RegionController = TextEditingController();
  TextEditingController NeighborhoodController = TextEditingController();
  TextEditingController HouseNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Consumer<AppProvider>(builder: (context, provider, _) {
      return Scaffold(
        body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: [
                SizedBox(
                  height: 50.h,
                ),
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.keyboard_arrow_left_outlined,
                        size: 30,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 16.w),
                        height: 45.h,
                        width: 257.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(23.5),
                          color: Color(0xFFF1F1F1),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Row(
                            children: [
                              ImageIcon(
                                AssetImage("assets/images/search.png"),
                                color: Colors.black,
                                size: 30,
                              ),
                              SizedBox(
                                width: 11.w,
                              ),
                              CustomText(
                                'Search product here...'.tr(),
                                color: Color(0xFF000000).withOpacity(0.5),
                                fontSize: 13.sp,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Spacer(),
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: ImageIcon(
                        AssetImage("assets/images/icon_category.png"),
                        color: Colors.black,
                        size: 30,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 40.h,
                ),
                SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomTextField(
                        controller: StoteController,
                        onClick: () {},
                        fontsize: 16.sp,
                        hintText: 'Categories'.tr(),
                        isPassword: false,
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      InkWell(
                        onTap: () {
                          showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime.now(),
                              lastDate: DateTime(2025));
                        },
                        child: DefaultTextField(
                            onClick: () {},
                            fontsize: 16.sp,
                            enable: false,
                            hintText: 'Date'.tr(),
                            isPassword: false,
                            suffix: Image.asset(
                              'assets/images/calender.png',
                              width: 20.w,
                              height: 20.h,
                            ),
                            controller: RegionController),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Row(
                        children: [
                          Container(
                            width: 20.w,
                            height: 20.h,
                            child: Transform.scale(
                              scaleY: .9,
                              scaleX: .9,
                              child: Checkbox(
                                  activeColor: mainAppColor,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(4)),
                                  value: SpHelper.spHelper.getRemember(),
                                  onChanged: (value) {}),
                            ),
                          ),
                          SizedBox(
                            width: 5.w,
                          ),
                          CustomText(
                            'Location'.tr(),
                          ),
                          SizedBox(
                            width: 30.w,
                          ),
                          Transform.scale(
                            scaleY: .9,
                            scaleX: .9,
                            child: Checkbox(
                                activeColor: mainAppColor,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(4)),
                                value: false,
                                onChanged: (value) {}),
                          ),
                          SizedBox(
                            width: 5.w,
                          ),
                          CustomText(
                            'Price Range'.tr(),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      CustomText(
                        'Price Range'.tr(),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      RangeSlider(
                          values: provider.rangeValues,
                          max: 2000.0,
                          min: 1.0,
                          activeColor: Colors.black,
                          onChanged: (value) {
                            provider.rangeValues = value;
                            provider.notifyListeners();
                          }),
                      Row(
                        children: [
                          SizedBox(
                            width: 10.w,
                          ),
                          Text(
                            '${provider.rangeValues.start.toInt()} ${currency}',
                            style: TextStyle(fontSize: 12.sp),
                          ),
                          Spacer(),
                          Text(
                            '${provider.rangeValues.end.toInt()} ${currency}',
                            style: TextStyle(fontSize: 12.sp),
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 100.h,
                      ),
                      Center(
                        child: CustomBottom(
                          onTap: () {},
                          height: 45.0.sp,
                          width: 271.0.sp,
                          backgroundColor: mainAppColor,
                          title: 'Apply filters'.tr(),
                          borderRadius: 10,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )),
      );
    });
  }
}
