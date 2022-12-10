import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:twnty2/UI/CustomWidget/custom_text.dart';
import 'package:twnty2/UI/Screens/CartScreen/widget/cart_buy_bottom_sheet.dart';
import 'package:twnty2/UI/Utils/constant.dart';

import '../../CustomWidget/custom_bottom.dart';

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
      oldPrice: '',
      price: '&22.00',
      num: '5',
    ),
    data(
      image: 'assets/images/mycart.png',
      title: 'Sweet Black Shirt',
      title1: 'Size L',
      oldPrice: '',
      price: '&22.00',
      num: '10',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: Icon(
          Icons.keyboard_arrow_left_outlined,
          size: 30,
          color: Colors.black,
        ),
        centerTitle: true,
        title: CustomText(
          'My Cart',
          fontSize: 16.0.sp,
          color: Colors.black,
        ),
      ),
      body: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            children: [
              SizedBox(
                height: 10.h,
              ),
              Container(
                height: 430.h,
                child: ListView.builder(
                    itemCount: list.length,
                    itemBuilder: (context, index) {
                      return buildItem(list[index]);
                    }),
              ),
              SizedBox(
                height: 10.h,
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0x80999ba9)),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    // mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        children: [
                          CustomText('items (2)', color: Color(0xff999BA9)),
                          Spacer(),
                          CustomText(
                            '&80.00',
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 12.h,
                      ),
                      Row(
                        children: [
                          CustomText('Discount', color: Color(0xff999BA9)),
                          Spacer(),
                          CustomText(
                            '&7.00',
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
                                  (index) =>
                                  Expanded(
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
                          Spacer(),
                          CustomText(
                            '&73.00',
                            fontWeight: FontWeight.w600,
                            color: mainAppColor,
                            fontSize: 16.0.sp,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 35.h,
              ),
              Center(
                child: CustomBottom(
                  onTap: () {
                    showModalBottomSheet(isScrollControlled: true,
                        context: context,
                        builder: (_) =>CartBuyBottomSheet() );
                  },
                  height: 45.0.sp,
                  width: 271.0.sp,
                  backgroundColor: mainAppColor,
                  title: 'BUY NOW',
                  borderRadius: 10,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildItem(data model) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8.h),
      height: 115.h,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Color(0xadf8f8f8)),
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
                  CustomText(
                    '${model.title}',
                    fontWeight: FontWeight.w400,
                    fontSize: 16.0.sp,
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
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomText(
                        '${model.oldPrice}',
                        fontWeight: FontWeight.w500,
                        fontSize: 12.0.sp,
                        color: Color(0xff99969D),
                      ),
                      SizedBox(
                        width: model.oldPrice == "" ? 0 : 10.w,
                      ),
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
