import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

import '../../CustomWidget/back_appBar_widget.dart';
import '../../CustomWidget/custom_text.dart';
import '../../Utils/constant.dart';

class data {
  String? image;
  String? title;
  String? title1;
  String? title2;
  String? title3;
  String? price;
  String? price1;
  String? date;

  data({
    this.image,
    this.title,
    this.title1,
    this.title2,
    this.title3,
    this.price,
    this.price1,
    this.date,
  });
}

class RequestsSellerScreen extends StatelessWidget {
  List<data> list = [
    data(
      image: 'assets/images/requestssiller.png',
      title: 'T-shirt, Turkish cotton material',
      title1: 'Quantity:',
      price1: '50',
      title3: 'Date: ',
      date: '20-12-2022',
      price: '&220.00',
      title2: 'View details',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.white,
          leading: BackAppBarWidget(),
          title: CustomText(
            'Requests',
            fontSize: 16.sp,
            color: Colors.black,
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Container(
                height: 42.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xffF1F1F1)),
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: TabBar(
                      indicatorColor: Colors.black,
                      indicatorWeight: 1,
                      indicator: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white),
                      tabs: [
                        Tab(
                          child: CustomText(
                            'Previous orders',
                            color: Colors.black,
                          ),
                        ),
                        Tab(
                          child: CustomText(
                            'Current requests ',
                            color: Colors.black,
                          ),
                        ),
                      ]),
                ),
              ),
              Expanded(
                child: TabBarView(children: [
                  ListView.builder(
                      padding: EdgeInsets.symmetric(vertical: 40),
                      itemCount: list.length,
                      itemBuilder: (context, index) {
                        return buildItem(list[index]);
                      }),
                  ListView.builder(
                      padding: EdgeInsets.symmetric(vertical: 40),
                      itemCount: list.length,
                      itemBuilder: (context, index) {
                        return buildItem(list[index]);
                      }),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildItem(data model) {
    return Container(
      height: 110.h,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.12),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                '${model.image}',
                fit: BoxFit.cover,
                height: 86.h,
                width: 86.w,
              ),
            ),
            SizedBox(
              width: 15.w,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      '${model.title}',
                      fontWeight: FontWeight.w400,
                      fontSize: 10.0.sp,
                    ),
                    Row(
                      children: [
                        CustomText(
                          '${model.title1}',
                          fontWeight: FontWeight.w400,
                          fontSize: 10.0.sp,
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                        CustomText(
                          '${model.price1}',
                          fontSize: 10.0.sp,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        CustomText(
                          '${model.title3}',
                          fontSize: 10.0.sp,
                        ),
                        CustomText(
                          '${model.date}',
                          fontSize: 10.0.sp,
                        ),
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CustomText(
                          '${model.price}',
                          fontWeight: FontWeight.w500,
                          fontSize: 14.0.sp,
                          color: mainAppColor,
                        ),
                        Spacer(),
                        CustomText(
                          '${model.title2}',
                          fontSize: 12.0.sp,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
