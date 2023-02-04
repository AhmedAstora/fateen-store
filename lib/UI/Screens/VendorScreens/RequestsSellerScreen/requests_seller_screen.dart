import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:twnty2/Helper/Router/router.dart';

import '../../../CustomWidget/custom_text.dart';
import '../../../CustomWidget/linear_progress_widget.dart';
import '../../../Utils/constant.dart';
import '../OrderDetailsScreen/order_details_screen.dart';

class data {
  String? image;
  String? title;
  String? title1;
  String? title2;
  String? title3;
  String? title4;
  String? title5;
  String? price;
  String? price1;
  String? date;

  data({
    this.image,
    this.title,
    this.title1,
    this.title2,
    this.title3,
    this.title4,
    this.title5,
    this.price,
    this.price1,
    this.date,
  });
}

class dataorder {
  String? image;
  String? title;
  String? title1;
  String? title2;
  String? title3;
  String? title4;
  String? title5;
  String? price;
  String? price1;
  String? price2;

  dataorder({
    this.image,
    this.title,
    this.title1,
    this.title2,
    this.title3,
    this.title4,
    this.title5,
    this.price,
    this.price1,
    this.price2,
  });
}

class RequestsSellerScreen extends StatelessWidget {
  List<data> list = [
    data(
      image: 'assets/images/mycart.png',
      title: 'T-shirt, Turkish cotton material',
      title1: 'Quantity:',
      price1: '520',
      title3: 'Date: ',
      title4: '#NSUD525632',
      title5: 'View Requests',
      date: '20-12-2022',
      price: '520\$',
      title2: 'Total amount:',
    ),
    data(
      image: 'assets/images/mycart.png',
      title: 'T-shirt, Turkish cotton material',
      title1: 'Quantity:',
      price1: '520',
      title3: 'Date: ',
      title4: '#NSUD525632',
      title5: 'View Requests',
      date: '20-12-2022',
      price: '520\$',
      title2: 'Total amount:',
    ),
    data(
      image: 'assets/images/mycart.png',
      title: 'T-shirt, Turkish cotton material',
      title1: 'Quantity:',
      price1: '520',
      title3: 'Date: ',
      title4: '#NSUD525632',
      title5: 'View Requests',
      date: '20-12-2022',
      price: '520\$',
      title2: 'Total amount:',
    ),
  ];
  List<dataorder> listOrder = [
    dataorder(
      image: 'assets/images/mycart.png',
      title: 'T-shirt, Turkish cotton material',
      title1: 'Quantity:',
      price1: '520',
      title3: 'Remaining quantity:',
      title4: '#NSUD525632',
      title5: 'View details',
      price2: ' 200',
      price: '520\$',
      title2: 'Total amount:',
    ),
    dataorder(
      image: 'assets/images/mycart.png',
      title: 'T-shirt, Turkish cotton material',
      title1: 'Quantity:',
      price1: '520',
      title3: 'Remaining quantity:',
      title4: '#NSUD525632',
      title5: 'View details',
      price2: ' 200',
      price: '520\$',
      title2: 'Total amount:',
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
                            'Complete requests',
                            color: Colors.black,
                          ),
                        ),
                        Tab(
                          child: CustomText(
                            'Open orders',
                            color: Colors.black,
                          ),
                        ),
                      ]),
                ),
              ),
              Expanded(
                child: TabBarView(children: [
                  ListView.separated(
                      padding: EdgeInsets.symmetric(vertical: 40),
                      separatorBuilder: (context, index) => SizedBox(
                            height: 12.h,
                          ),
                      itemCount: list.length,
                      itemBuilder: (context, index) {
                        return buildItem(list[index]);
                      }),
                  ListView.separated(
                      padding: EdgeInsets.symmetric(vertical: 40),
                      separatorBuilder: (context, index) => SizedBox(
                            height: 12.h,
                          ),
                      itemCount: listOrder.length,
                      itemBuilder: (context, index) {
                        return buildItem1(listOrder[index]);
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
    return InkWell(
      onTap: () {
        RouterHelper.routerHelper
            .routingToSpecificWidgetWithoutPop(OrderDetailsScreen());
      },
      child: Container(
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
                  height: 120.h,
                  width: 117.w,
                ),
              ),
              SizedBox(
                width: 10.w,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        '${model.title}',
                        fontWeight: FontWeight.w600,
                        fontSize: 10.0.sp,
                      ),
                      SizedBox(
                        height: 4.h,
                      ),
                      CustomText(
                        '${model.title4}',
                        fontWeight: FontWeight.w400,
                        fontSize: 10.0.sp,
                      ),
                      SizedBox(
                        height: 4.h,
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
                      SizedBox(
                        height: 4.h,
                      ),
                      Row(
                        children: [
                          CustomText(
                            '${model.title2}',
                            fontSize: 10.0.sp,
                          ),
                          SizedBox(
                            width: 5.w,
                          ),
                          CustomText(
                            '${model.price}',
                            fontSize: 12.0.sp,
                            fontWeight: FontWeight.w500,
                            color: mainAppColor,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 4.h,
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
                      Align(
                        alignment: Alignment.bottomRight,
                        child: CustomText(
                          '${model.title5}',
                          fontSize: 10.0.sp,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildItem1(dataorder model1) {
    return InkWell(
      onTap: () {
        RouterHelper.routerHelper
            .routingToSpecificWidgetWithoutPop(OrderDetailsScreen());
      },
      child: Container(
        height: 146.h,
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
                  '${model1.image}',
                  fit: BoxFit.cover,
                  height: 120.h,
                  width: 117.w,
                ),
              ),
              SizedBox(
                width: 10.w,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        '${model1.title}',
                        fontWeight: FontWeight.w600,
                        fontSize: 10.0.sp,
                      ),
                      SizedBox(
                        height: 3.h,
                      ),
                      CustomText(
                        '${model1.title4}',
                        fontWeight: FontWeight.w400,
                        fontSize: 10.0.sp,
                      ),
                      SizedBox(
                        height: 3.h,
                      ),
                      Row(
                        children: [
                          CustomText(
                            '${model1.title1}',
                            fontWeight: FontWeight.w400,
                            fontSize: 10.0.sp,
                          ),
                          SizedBox(
                            width: 5.w,
                          ),
                          CustomText(
                            '${model1.price1}',
                            fontSize: 10.0.sp,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 3.h,
                      ),
                      Row(
                        children: [
                          CustomText(
                            '${model1.title2}',
                            fontSize: 10.0.sp,
                          ),
                          SizedBox(
                            width: 5.w,
                          ),
                          CustomText(
                            '${model1.price}',
                            fontSize: 12.0.sp,
                            fontWeight: FontWeight.w500,
                            color: mainAppColor,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 3.h,
                      ),
                      Row(
                        children: [
                          CustomText(
                            '${model1.title3}',
                            fontSize: 10.0.sp,
                          ),
                          CustomText(
                            '${model1.price2}',
                            fontSize: 10.0.sp,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 3.h,
                      ),
                      Row(
                        children: [
                          CustomLienarProgressWidget(
                            value: .6,
                            width: 106.w,
                            height: 10.h,
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          CustomText(
                            '78%',
                            fontSize: 10.sp,
                            height: 1,
                          ),
                        ],
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: CustomText(
                          '${model1.title5}',
                          fontSize: 10.0.sp,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
