import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:twnty2/UI/Utils/constant.dart';

import '../../../CustomWidget/custom_bottom.dart';
import '../../../CustomWidget/custom_text.dart';

class data {
  String? image;
  String? image1;
  String? title;
  String? title1;
  String? title2;
  String? price;

  data({
    this.image,
    this.image1,
    this.title,
    this.title1,
    this.title2,
    this.price,
  });
}

class OrderDetailsScreen1 extends StatelessWidget {
  List<data> list = [
    data(
      image: 'assets/images/icondeatils.png',
      image1: 'assets/images/box.png',
      title: 'Abu Osama Yusuf',
      title1: '#522521',
      title2: 'Kingdom of Saudi Arabia, Riyadh, Western\nDistrict Street',
      price: 'SAR 520',
    ),
    data(
      image: 'assets/images/icondeatils.png',
      image1: 'assets/images/box.png',
      title: 'Abu Osama Yusuf',
      title1: '#522521',
      title2: 'Kingdom of Saudi Arabia, Riyadh, Western\nDistrict Street',
      price: 'SAR 520',
    ),
    data(
      image: 'assets/images/icondeatils.png',
      image1: 'assets/images/box.png',
      title: 'Abu Osama Yusuf',
      title1: '#522521',
      title2: 'Kingdom of Saudi Arabia, Riyadh, Western\nDistrict Street',
      price: 'SAR 520',
    ),
    data(
      image: 'assets/images/icondeatils.png',
      image1: 'assets/images/box.png',
      title: 'Abu Osama Yusuf',
      title1: '#522521',
      title2: 'Kingdom of Saudi Arabia, Riyadh, Western\nDistrict Street',
      price: 'SAR 520',
    ),
    data(
      image: 'assets/images/icondeatils.png',
      image1: 'assets/images/box.png',
      title: 'Abu Osama Yusuf',
      title1: '#522521',
      title2: 'Kingdom of Saudi Arabia, Riyadh, Western\nDistrict Street',
      price: 'SAR 520',
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
          Icons.keyboard_arrow_left_rounded,
          size: 30,
          color: Colors.black,
        ),
        title: CustomText(
          'Order details',
          fontSize: 16.sp,
          color: Colors.black,
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(
              height: 30.h,
            ),
            Row(
              children: [
                Image.asset(
                  'assets/images/box.png',
                  height: 24.h,
                  width: 24.w,
                ),
                SizedBox(
                  width: 10.w,
                ),
                CustomText(
                  'Order details',
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w500,
                ),
                SizedBox(
                  width: 10.w,
                ),
                CustomText(
                  '(520 requests)',
                  fontSize: 8.sp,
                ),
                Spacer(),
                Container(
                    height: 23.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: mainAppColor),
                    child: MaterialButton(
                      height: 40,
                      onPressed: () {},
                      child: Row(
                        children: [
                          CustomText(
                            'Quick edit',
                            color: Colors.white,
                            fontSize: 10.sp,
                          ),
                          SizedBox(
                            width: 5.w,
                          ),
                          Icon(
                            Icons.keyboard_arrow_down_sharp,
                            size: 20,
                            color: Colors.white,
                          )
                        ],
                      ),
                    ))
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            Container(
              height: 1,
              width: MediaQuery.of(context).size.width,
              color: Colors.grey[300],
            ),
            SizedBox(
              height: 25.h,
            ),
            Expanded(
              child: ListView.separated(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  separatorBuilder: (context, index) => SizedBox(
                        height: 12.h,
                      ),
                  itemCount: list.length,
                  itemBuilder: (context, index) {
                    return buildItem(list[index]);
                  }),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildItem(data model) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          color: Colors.white,
          border: Border.all(
            color: greyColor.withOpacity(.1),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.21),
              spreadRadius: 1,
              blurRadius: 3,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ]),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Row(
          children: [
            Image.asset(
              '${model.image}',
              height: 35.h,
              width: 35.w,
            ),
            SizedBox(
              width: 10.w,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                  '${model.title}',
                  fontSize: 12.sp,
                ),
                SizedBox(
                  height: 5.h,
                ),
                CustomText(
                  '${model.title1}',
                  fontSize: 10.sp,
                ),
                SizedBox(
                  height: 5.h,
                ),
                CustomText(
                  '${model.title2}',
                  fontSize: 10.sp,
                  maxLines: 2,

                ),
              ],
            ),
            Spacer(),
            Align(
                alignment: Alignment.topRight,
                child: Column(
                  children: [
                    CustomText(
                      '${model.price}',
                      fontSize: 12.sp,
                      color: mainAppColor,
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Image.asset(
                      '${model.image1}',
                      height: 24.h,
                      width: 24.w,
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
