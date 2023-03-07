import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:twnty2/Helper/Router/router.dart';
import 'package:twnty2/UI/Screens/VendorScreens/RequestsSellerScreen/widget/complete_requests_widget.dart';
import 'package:twnty2/UI/Screens/VendorScreens/RequestsSellerScreen/widget/open_orders_widget.dart';

import '../../../CustomWidget/custom_text.dart';
import '../../../CustomWidget/linear_progress_widget.dart';
import '../../../Utils/constant.dart';
import '../OrderDetailsScreen/order_details_screen.dart';
import '../OrderDetailsScreen1/order_details_screen1.dart';

class RequestsSellerScreen extends StatelessWidget {

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
                            'Complete requests'.tr(),
                            color: Colors.black,
                          ),
                        ),
                        Tab(
                          child: CustomText(
                            'Open orders'.tr(),
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
                      itemCount: 3,
                      itemBuilder: (context, index) {
                        return CompleteRequestsWidget();
                      }),
                  ListView.separated(
                      padding: EdgeInsets.symmetric(vertical: 40),
                      separatorBuilder: (context, index) => SizedBox(
                            height: 12.h,
                          ),
                      itemCount: 2,
                      itemBuilder: (context, index) {
                        return OpenOrdersWidget();
                      }),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
