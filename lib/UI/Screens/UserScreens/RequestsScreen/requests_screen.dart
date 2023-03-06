import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:provider/provider.dart';
import 'package:twnty2/UI/Screens/UserScreens/RequestsScreen/widgets/request_user_widget.dart';

import '../../../../Helper/Providers/app_provider.dart';
import '../../../CustomWidget/custom_text.dart';
import '../../../Utils/constant.dart';

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
              'Requests'.tr(),
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
                              'New orders'.tr(),
                              color: Colors.black,
                            ),
                          ),
                          Tab(
                            child: CustomText(
                              'New orders'.tr(),
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
                      itemCount: list.length,
                      itemBuilder: (context, index) {
                        return RequestUserWidget();
                      },
                      separatorBuilder: (BuildContext context, int index) =>
                          SizedBox(
                        height: 10.h,
                      ),
                    ),
                    ListView.separated(
                      padding: EdgeInsets.symmetric(vertical: 40),
                      itemCount: list.length,
                      itemBuilder: (context, index) {
                        return RequestUserWidget();
                      },
                      separatorBuilder: (BuildContext context, int index) =>
                          SizedBox(
                        height: 10.h,
                      ),
                    ),
                  ]),
                ),
              ],
            ),
          ),
        ),
      );
    });
  }
}
