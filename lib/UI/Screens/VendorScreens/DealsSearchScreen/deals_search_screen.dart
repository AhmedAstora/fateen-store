import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:twnty2/Helper/Router/router.dart';

import '../../../CustomWidget/custom_text.dart';
import '../../../Utils/constant.dart';
import '../../SharedScreens/AddressScreen/show_dialog_widget.dart';
import '../DealsScreen/deals_screen.dart';

class data {
  String? image;
  String? title;
  String? title1;
  String? title2;
  String? title3;
  String? price;
  String? price1;

  data({
    this.image,
    this.title,
    this.title1,
    this.title2,
    this.title3,
    this.price,
    this.price1,
  });
}

class DealsSearchScreen extends StatelessWidget {
  List<data> list = [
    data(
      image: 'assets/images/requestssiller.png',
      title: 'T-shirt, Turkish cotton material',
      title1: 'Quantity:',
      price: '50',
      title3: 'Transaction price:',
      price1: '520&',
      title2: 'Finished',
    ),
    data(
      image: 'assets/images/requestssiller.png',
      title: 'T-shirt, Turkish cotton material',
      title1: 'Quantity:',
      price: '50',
      title3: 'Transaction price:',
      price1: '520&',
      title2: 'Finished',
    ),
    data(
      image: 'assets/images/requestssiller.png',
      title: 'T-shirt, Turkish cotton material',
      title1: 'Quantity:',
      price: '50',
      title3: 'Transaction price:',
      price1: '520&',
      title2: 'Finished',
    ),
    data(
      image: 'assets/images/requestssiller.png',
      title: 'T-shirt, Turkish cotton material',
      title1: 'Quantity:',
      price: '50',
      title3: 'Transaction price:',
      price1: '520&',
      title2: 'Finished',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: CustomText(
          'Deals ',
          fontSize: 16.sp,
          color: Colors.black,
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  height: 45.h,
                  width: MediaQuery.of(context).size.width / 1.25,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(23.5),
                    color: Color(0xFFF1F1F1),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      children: [
                        Icon(Icons.search),
                        SizedBox(
                          width: 11.w,
                        ),
                        CustomText(
                          'Search product here...',
                          color: Color(0xFF000000).withOpacity(0.5),
                          fontSize: 10.sp,
                        ),
                      ],
                    ),
                  ),
                ),
                Spacer(),
                ImageIcon(
                  AssetImage("assets/images/icon_categorys.png"),
                  color: Colors.black,
                  size: 18,
                ),
              ],
            ),
            Expanded(
              child: ListView.separated(
                  separatorBuilder: (context, index) => SizedBox(
                        height: 15.h,
                      ),
                  padding: EdgeInsets.symmetric(vertical: 20),
                  itemCount: list.length,
                  itemBuilder: (context, index) {
                    return buildItem(list[index], context);
                  }),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildItem(data model, context) {
    return InkWell(
      onTap: () {
        RouterHelper.routerHelper
            .routingToSpecificWidgetWithoutPop(DealsScreen());
      },
      child: Container(
        height: 115.h,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.grey, width: 0.2)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  '${model.image}',
                  fit: BoxFit.cover,
                  height: 87.h,
                  width: 87.w,
                ),
              ),
              SizedBox(
                width: 3.w,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          CustomText(
                            '${model.title}',
                            fontSize: 10.0.sp,
                          ),
                          Spacer(),
                          Container(
                              alignment: Alignment.topRight,
                              child: InkWell(
                                onTap: () {
                                  showDialog(
                                      context: context,
                                      builder: (_) => DeleteDialogWidget());
                                },
                                child: Icon(
                                  Icons.more_horiz,
                                  size: 25.0.sp,
                                ),
                              )),
                        ],
                      ),
                      Row(
                        children: [
                          CustomText(
                            '${model.title1}',
                            fontSize: 10.0.sp,
                          ),
                          SizedBox(
                            width: 55.w,
                          ),
                          CustomText(
                            '${model.price}',
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
                          SizedBox(
                            width: 20.w,
                          ),
                          CustomText(
                            '${model.price1}',
                            fontSize: 12.0.sp,
                            color: mainAppColor,
                            fontWeight: FontWeight.w600,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Spacer(),
                          CustomText(
                            '${model.title2}',
                            fontSize: 13.0.sp,
                            color: Color(0xff008E56),
                            fontWeight: FontWeight.w600,
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
      ),
    );
  }
}
