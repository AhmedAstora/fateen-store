import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:twnty2/UI/CustomWidget/custom_text.dart';

import '../../../CustomWidget/custom_bottom.dart';
import '../../../Utils/constant.dart';

class data {
  String? image;
  String? title;
  String? title1;
  String? title2;
  String? price;
  String? num;

  data({
    this.image,
    this.title,
    this.title1,
    this.title2,
    this.price,
    this.num,
  });
}

class ViewInvoiceScreen extends StatelessWidget {
  List<data> list = [
    data(
        image: 'assets/images/requests.png',
        title: 'T-shirt, Turkish cotton',
        title1: 'Quantity :   ',
        title2: 'price :   ',
        price: '320\$',
        num: '5'),
    data(
        image: 'assets/images/requests.png',
        title: 'T-shirt, Turkish cotton',
        title1: 'Quantity :   ',
        title2: 'price :   ',
        price: '320\$',
        num: '5'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0.0,
        title: CustomText(
          'Purchases bill'.tr(),
          fontSize: 16.sp,
          color: Colors.black,
        ),
        actions: [
          Image.asset(
            'assets/images/pdf.png',
            height: 24.h,
            width: 20.w,
          ),
          SizedBox(
            width: 15.w,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 220,
                child: ListView.separated(
                    separatorBuilder: (context, index) => SizedBox(
                          height: 10.h,
                        ),
                    padding: EdgeInsets.symmetric(vertical: 40),
                    itemCount: list.length,
                    itemBuilder: (context, index) {
                      return buildItem(list[index]);
                    }),
              ),
              SizedBox(
                height: 34.h,
              ),
              Container(
                height: 110.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.1),
                      spreadRadius: 4,
                      blurRadius: 5,
                      offset: Offset(2, 1), // changes position of shadow
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        'Shipping and Payment'.tr(),
                        fontSize: 16.sp,
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomText(
                            'Location :'.tr(),
                            fontWeight: FontWeight.w500,
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          CustomText(
                            '(870) 285-3677 825 Saudi Arabia,\n The city of Jeddah(AR), 71958',
                            color: Colors.grey[500],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              CustomText(
                'Payment - mada network'.tr(),
              ),
              Container(
                height: 1,
                width: MediaQuery.of(context).size.width,
                color: Colors.grey[200],
              ),
              SizedBox(
                height: 30.h,
              ),
              Column(
                // mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    children: [
                      CustomText('items (2)'.tr(), color: Color(0xff999BA9)),
                      Spacer(),
                      CustomText(
                        '\$80.00',
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      CustomText('Discount'.tr(), color: Color(0xff999BA9)),
                      Spacer(),
                      CustomText(
                        '\$7.00',
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  Container(
                    child: Row(
                      children: List.generate(
                          80 ~/ 1,
                          (index) => Expanded(
                                child: Container(
                                  color: index % 2 == 0
                                      ? Colors.transparent
                                      : Colors.grey.withOpacity(.6),
                                  height: .6,
                                ),
                              )),
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(
                    children: [
                      CustomText('Delivery price'.tr(),
                          color: Color(0xff999BA9)),
                      Spacer(),
                      CustomText(
                        '\$7.00',
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Container(
                    child: Row(
                      children: List.generate(
                          80 ~/ 1,
                          (index) => Expanded(
                                child: Container(
                                  color: index % 2 == 0
                                      ? Colors.transparent
                                      : Colors.grey.withOpacity(.6),
                                  height: .6,
                                ),
                              )),
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(
                    children: [
                      CustomText(
                        'Total Price'.tr(),
                        fontWeight: FontWeight.w600,
                        fontSize: 16.sp,
                      ),
                      Spacer(),
                      CustomText(
                        '\$73.00',
                        fontWeight: FontWeight.w600,
                        color: mainAppColor,
                        fontSize: 16.0.sp,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 90.h,
                  ),
                  CustomBottom(
                    onTap: () {},
                    height: 50.0.sp,
                    width: 271.0.sp,
                    backgroundColor: mainAppColor,
                    title: 'Home'.tr(),
                    borderRadius: 10,
                  ),
                  SizedBox(
                    height: 90.h,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildItem(data model) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Color(0xfff6f6f6)),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          children: [
            Image.asset(
              '${model.image}',
              height: 60.h,
              width: 60.w,
            ),
            SizedBox(
              width: 10.w,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                  '${model.title}'.tr(),
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w500,
                ),
                Row(
                  children: [
                    CustomText(
                      '${model.title1}'.tr(),
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w500,
                    ),
                    CustomText(
                      '${model.num}',
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ],
                ),
                Row(
                  children: [
                    CustomText(
                      '${model.title2}'.tr(),
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w500,
                    ),
                    CustomText(
                      '${model.price}',
                      fontSize: 10.sp,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
