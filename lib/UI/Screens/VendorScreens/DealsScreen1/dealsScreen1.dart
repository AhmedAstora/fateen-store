import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:twnty2/UI/Screens/VendorScreens/DealsScreen1/widget/All_deals_widget.dart';
import 'package:twnty2/UI/Screens/VendorScreens/DealsScreen1/widget/complete_deals_widget.dart';

import '../../../CustomWidget/back_appBar_widget.dart';
import '../../../CustomWidget/custom_text.dart';
import '../../../Utils/constant.dart';
import '../RequestsSellerScreen/widget/complete_requests_widget.dart';
import '../RequestsSellerScreen/widget/open_orders_widget.dart';

class DealsScreen1 extends StatelessWidget {


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
            'Deals'.tr(),
            fontSize: 16.sp,
            color: Colors.black,
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: InkWell(
                onTap: () {},
                child: Image.asset('assets/images/icon_categorys.png',height: 16.h,width: 16.w,),
              ),
            )
          ],
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
                            'Completed deals'.tr(),
                            color: Colors.black,
                          ),
                        ),
                        Tab(
                          child: CustomText(
                            'All deals'.tr(),
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
                      itemCount: 6,
                      itemBuilder: (context, index) {
                        return CompleteDealsWidget();
                      }),
                  ListView.separated(
                      padding: EdgeInsets.symmetric(vertical: 40),
                      separatorBuilder: (context, index) => SizedBox(
                        height: 12.h,
                      ),
                      itemCount: 6,
                      itemBuilder: (context, index) {
                        return AllDealsWidget();
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
