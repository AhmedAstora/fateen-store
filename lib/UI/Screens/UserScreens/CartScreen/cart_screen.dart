import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:twnty2/UI/CustomWidget/custom_text.dart';
import 'package:twnty2/UI/Screens/UserScreens/CartScreen/widget/cart_buy_bottom_sheet.dart';

import '../../../CustomWidget/custom_bottom.dart';
import '../../../Utils/constant.dart';

class data {
  String? image;
  String? title;
  String? title1;
  String? oldPrice;
  String? price;
  String? num;

  data({
    this.image,
    this.title,
    this.title1,
    this.oldPrice,
    this.price,
    this.num,
  });
}

class CartScreen extends StatelessWidget {
  List<data> list = [
    data(
      image: 'assets/images/mycart.png',
      title: 'Sweet Black Shirt',
      title1: 'Size L',
      oldPrice: '&40.00',
      price: '&22.00',
      num: '1',
    ),
    data(
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
          'My Cart',
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
                height: 330.h,
                child: ListView.separated(
                  itemCount: list.length,
                  itemBuilder: (context, index) {
                    return buildItem(list[index]);
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return SizedBox(
                      height: 10.h,
                    );
                  },
                ),
              ),
              SizedBox(
                height: 10.h,
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
                          CustomText('Items numbers ', color: Color(0xff999BA9)),
                          Spacer(),
                          CustomText(
                            '(2)',
                            fontSize: 12.sp,
                          ),
                        ],
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
                          CustomText('Subtotal', color: Color(0xff999BA9)),
                          Spacer(),
                          CustomText(
                            'SAR22.00',
                            fontSize: 12.sp,
                          ),
                        ],
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
                          CustomText('Delivery Charge!', color: Color(0xff999BA9)),
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
                        children: [
                          CustomText(
                            'Total Price',
                            fontWeight: FontWeight.w600,
                            fontSize: 16.sp,
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          CustomText(
                            'The price includes tax',
                            fontSize: 10.sp,
                            color: Colors.grey[500],
                          ),
                          Spacer(),
                          CustomText(
                            'SAR22.00',
                            fontWeight: FontWeight.w600,
                            color: mainAppColor,
                            fontSize: 12.0.sp,
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
                          borderRadius: BorderRadius.vertical(top: Radius.circular(30.0)),
                        ),
                        isScrollControlled: true,
                        context: context,
                        builder: (_) => CartBuyBottomSheet());
                  },
                  height: 45.0.sp,
                  width: 271.0.sp,
                  backgroundColor: mainAppColor,
                  title: 'Checkout',
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

  Widget buildItem(data model) {
    return Container(
      height: 135.h,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.grey, width: 0.3)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                '${model.image}',
                fit: BoxFit.cover,
                height: 103.h,
                width: 87.w,
              ),
            ),
            SizedBox(
              width: 10.w,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      CustomText(
                        '${model.title}',
                        fontWeight: FontWeight.w400,
                        fontSize: 16.0.sp,
                      ),
                      Spacer(),
                      Icon(
                        Icons.delete_outline,
                        size: 20,
                        color: mainAppColor,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 5.w,
                  ),
                  CustomText(
                    '${model.title1}',
                    fontWeight: FontWeight.w400,
                    fontSize: 14.0.sp,
                    color: Color(0xff99969D),
                  ),
                  Spacer(),
                  CustomText(
                    '${model.oldPrice}',
                    fontWeight: FontWeight.w500,
                    fontSize: 12.0.sp,
                    color: Color(0xff99969D),
                  ),
                  SizedBox(
                    width: model.oldPrice == "" ? 0 : 10.w,
                  ),
                  Row(
                    children: [
                      CustomText('${model.price}',
                          fontWeight: FontWeight.w700,
                          fontSize: 16.0.sp,
                          color: mainAppColor),
                      Spacer(),
                      Container(
                        height: 22.h,
                        width: 67.w,
                        child: Row(
                          children: [
                            Container(
                              alignment: Alignment.bottomCenter,
                              height: 22.h,
                              width: 20.w,
                              child: Icon(
                                Icons.maximize,
                                size: 13.sp,
                                color: Colors.black,
                              ),
                              decoration: BoxDecoration(
                                  color: Color(0xffEBEBEB),
                                  borderRadius: BorderRadius.circular(5)),
                            ),
                            Container(
                                height: 22.h,
                                width: 27.w,
                                color: Colors.white,
                                child: Center(
                                    child: CustomText(
                                  '${model.num}',
                                  fontSize: 12.0.sp,
                                  fontWeight: FontWeight.w700,
                                ))),
                            Container(
                              height: 22.h,
                              width: 20.w,
                              child: Icon(
                                Icons.add,
                                size: 15.sp,
                                color: Colors.white,
                              ),
                              decoration: BoxDecoration(
                                  color: mainAppColor,
                                  borderRadius: BorderRadius.circular(5)),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
