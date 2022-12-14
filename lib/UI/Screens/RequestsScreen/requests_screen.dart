import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:provider/provider.dart';

import '../../../Helper/Providers/app_provider.dart';
import '../../CustomWidget/back_appBar_widget.dart';
import '../../CustomWidget/custom_text.dart';
import '../../Utils/constant.dart';

class data {
  String? image;
  String? title;
  String? title1;
  String? title2;
  String? title3;
  String? oldPrice;
  String? price;
  String? num;

  data({
    this.image,
    this.title,
    this.title1,
    this.title2,
    this.title3,
    this.oldPrice,
    this.price,
    this.num,
  });
}

class RequestsScreen extends StatelessWidget {
  List<data> list = [
    data(
      image: 'assets/images/requests.png',
      title: 'Imported cotton clothing set',
      title1: 'Bread, Avocado, Leaf',
      title2: 'Status:',
      title3: 'Pending',
      oldPrice: '&9.9',
      price: '&5.8',
    ),
    data(
      image: 'assets/images/requests1.png',
      title: 'Imported cotton clothing set',
      title1: 'Bread, Avocado, Leaf',
      title2: 'Status:',
      title3: 'Finished',
      oldPrice: '&9.9',
      price: '&5.8',
    ),
    data(
      image: 'assets/images/requests2.png',
      title: 'Imported cotton clothing set',
      title1: 'Bread, Avocado, Leaf',
      title2: 'Status:',
      title3: 'Canceled',
      oldPrice: '&9.9',
      price: '&5.8',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Consumer<AppProvider>(builder: (context, b, _) {
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
                  height: 55.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xffF1F1F1)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TabBar(
                        indicatorColor: Colors.black,
                        indicatorWeight: 1,
                        indicator: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white),
                        tabs: [
                          Tab(
                            child: CustomText(
                              'New orders',
                              color: Colors.black,
                            ),
                          ),
                          Tab(
                            child: CustomText(
                              'New orders',
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
    });
  }

  Widget buildItem(data model) {
    return Container(
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
                height: 108.h,
                width: 108.w,
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
                    fontSize: 12.0.sp,
                  ),
                  Row(
                    children: [
                      CustomText(
                        '${model.price}',
                        fontWeight: FontWeight.w400,
                        fontSize: 12.0.sp,
                        color: mainAppColor,
                      ),
                      SizedBox(
                        width: 5.w,
                      ),
                      CustomText(
                        '${model.oldPrice}',
                        fontWeight: FontWeight.w400,
                        fontSize: 12.0.sp,
                        color: Color(0xff929292),
                      ),
                    ],
                  ),
                  CustomText(
                    '${model.title1}',
                    color: Color(0xff929292),
                    fontSize: 12.0.sp,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomText(
                        '${model.title2}',
                        fontWeight: FontWeight.w500,
                        fontSize: 12.0.sp,
                        color: Color(0xff99969D),
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      CustomText('${model.title3}',
                          fontSize: 14.0.sp, color: Color(0xffE94E1B)),
                    ],
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
