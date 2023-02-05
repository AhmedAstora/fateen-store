import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:twnty2/UI/CustomWidget/custom_text.dart';
import 'package:twnty2/UI/Screens/UserScreens/CartScreen/widget/cart_buy_bottom_sheet.dart';
import 'package:twnty2/UI/Screens/UserScreens/CartScreen/widget/cart_widget.dart';

import '../../../CustomWidget/custom_bottom.dart';
import '../../../Utils/constant.dart';

class Cartdata {
  String? image;
  String? title;
  String? title1;
  String? oldPrice;
  String? price;
  String? num;

  Cartdata({
    this.image,
    this.title,
    this.title1,
    this.oldPrice,
    this.price,
    this.num,
  });
}

class CartScreen extends StatelessWidget {
  List<Cartdata> list = [
    Cartdata(
      image: 'assets/images/mycart.png',
      title: 'Sweet Black Shirt',
      title1: 'Size L',
      oldPrice: '&40.00',
      price: '&22.00',
      num: '1',
    ),
    Cartdata(
      image: 'assets/images/mycart.png',
      title: 'Sweet Black Shirt',
      title1: 'Size L',
      oldPrice: '&40.00',
      price: '&22.00',
      num: '5',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        title: CustomText(
          'My Cart'.tr(),
          fontSize: 16.0.sp,
          color: Colors.black,
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            children: [
              SizedBox(
                height: 40.h,
              ),
              Container(
                child: ListView.separated(
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: list.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return CartWidget(
                      model: list[index],
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return SizedBox(
                      height: 10.h,
                    );
                  },
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    // mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        children: [
                          CustomText('Items numbers '.tr(),
                              color: Color(0xff999BA9)),
                          Spacer(),
                          CustomText(
                            '(2)',
                            fontSize: 12.sp,
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
                          CustomText('Subtotal'.tr(), color: Color(0xff999BA9)),
                          Spacer(),
                          CustomText(
                            'SAR22.00',
                            fontSize: 12.sp,
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
                        height: 12.h,
                      ),
                      Row(
                        children: [
                          CustomText('Delivery Charge!'.tr(),
                              color: Color(0xff999BA9)),
                          Spacer(),
                          CustomText(
                            '&7.00',
                            fontSize: 12.sp,
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
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          CustomText(
                            'Total Price'.tr(),
                            fontWeight: FontWeight.w600,
                            fontSize: 16.sp,
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          CustomText(
                            'The price includes tax'.tr(),
                            fontSize: 10.sp,
                            color: Colors.grey[500],
                          ),
                          Spacer(),
                          CustomText(
                            'SAR',
                            fontWeight: FontWeight.w600,
                            color: mainAppColor,
                            fontSize: 12.0.sp,
                          ),
                          CustomText(
                            '22.00',
                            fontWeight: FontWeight.bold,
                            color: mainAppColor,
                            fontSize: 15.0.sp,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 25.h,
              ),
              Center(
                child: CustomBottom(
                  onTap: () {
                    showModalBottomSheet(
                        shape: const RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.vertical(top: Radius.circular(30.0)),
                        ),
                        isScrollControlled: true,
                        context: context,
                        builder: (_) => CartBuyBottomSheet());
                  },
                  height: 45.0.sp,
                  width: 271.0.sp,
                  backgroundColor: mainAppColor,
                  title: 'Checkout'.tr(),
                  borderRadius: 10,
                ),
              ),
              SizedBox(
                height: 50.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
