import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:twnty2/Helper/Router/router.dart';
import 'package:twnty2/UI/Screens/SharedScreens/NotificationsScreen/notifications_screen.dart';
import 'package:twnty2/UI/Screens/VendorScreens/HomeSellerScreen/widget/home_seller_widget.dart';

import '../../../../Helper/Model/chart_model.dart';
import '../../../CustomWidget/custom_text.dart';
import '../../../Utils/constant.dart';

class HomeSellerScreen extends StatelessWidget {
  List<ChartData>? chartData = <ChartData>[
    ChartData('Q1', 10, 55, 32, 65),
    ChartData('Q2', 20, 15, 70, 10),
    ChartData('Q3', 30, 55, 22, 65),
    ChartData('Q4', 80, 715, 70, 20),
    ChartData('Q4', 80, 715, 70, 20),
  ];

  TooltipBehavior? _tooltipBehavior;
  List<ChartSampleData> chartData2 = [];

  List<StackedLineSeries<ChartSampleData, String>> _getStackedLineSeries() {
    return <StackedLineSeries<ChartSampleData, String>>[
      StackedLineSeries<ChartSampleData, String>(
          dataSource: chartData2,
          xValueMapper: (ChartSampleData sales, _) => sales.x as String,
          yValueMapper: (ChartSampleData sales, _) => sales.secondSeriesYValue,
          name: 'Apr',
          markerSettings: const MarkerSettings(isVisible: true))
    ];
  }

  List<ChartSeries<ChartData, String>> _getStackedColumnSeries() {
    return <ChartSeries<ChartData, String>>[
      StackedColumn100Series<ChartData, String>(
          color: mainAppColor,
          width: .5,
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(10), topLeft: Radius.circular(10)),
          dataSource: chartData!,
          dataLabelSettings: const DataLabelSettings(isVisible: false),
          xValueMapper: (ChartData sales, _) => sales.x,
          yValueMapper: (ChartData sales, _) => sales.y1,
          name: 'Product D'),
      StackedColumn100Series<ChartData, String>(
          color: Colors.transparent,
          width: .5,
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(10), topLeft: Radius.circular(10)),
          dataSource: chartData!,
          dataLabelSettings: const DataLabelSettings(isVisible: false),
          xValueMapper: (ChartData sales, _) => sales.x,
          yValueMapper: (ChartData sales, _) => sales.y4,
          name: 'Product D'),
    ];
  }

  @override
  Widget build(BuildContext context) {
    chartData2.clear();
    chartData2 = <ChartSampleData>[
      ChartSampleData(
          x: 'Mar',
          y: 55,
          yValue: 40,
          secondSeriesYValue: 145,
          thirdSeriesYValue: 48),
      ChartSampleData(
          x: 'Apr',
          y: 33,
          yValue: 45,
          secondSeriesYValue: 154,
          thirdSeriesYValue: 28),
      ChartSampleData(
          x: 'May',
          y: 43,
          yValue: 23,
          secondSeriesYValue: 120,
          thirdSeriesYValue: 34),
      ChartSampleData(
          x: 'Jun',
          y: 32,
          yValue: 54,
          secondSeriesYValue: 123,
          thirdSeriesYValue: 54),
      ChartSampleData(
          x: 'Jul',
          y: 56,
          yValue: 18,
          secondSeriesYValue: 143,
          thirdSeriesYValue: 55),
      ChartSampleData(
          x: 'Aug',
          y: 23,
          yValue: 54,
          secondSeriesYValue: 133,
          thirdSeriesYValue: 56),
    ];
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.white,
          title: CustomText(
            'Dashboard'.tr(),
            fontSize: 16.sp,
            color: Colors.black,
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: InkWell(
                onTap: () {
                  RouterHelper.routerHelper
                      .routingToSpecificWidgetWithoutPop(NotificationsScreen());
                },
                child: Container(
                  alignment: Alignment.center,
                  child: Stack(
                    alignment: Alignment.topRight,
                    children: [
                      Icon(
                        Icons.notifications,
                        size: 25.0,
                        color: Colors.black,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 3),
                        child: CircleAvatar(
                          radius: 5,
                          backgroundColor: mainAppColor,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 16.w),
                height: 103.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.12),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 25,
                        child: Image.asset('assets/images/man.png'),
                      ),
                      SizedBox(
                        width: 15.h,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 25),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                CustomText(
                                  'Hi, Abu Omar'.tr(),
                                  fontWeight: FontWeight.w500,
                                  color: mainAppColor,
                                ),
                                SizedBox(
                                  width: 10.w,
                                ),
                                Image.asset(
                                  'assets/images/hand.png',
                                  height: 24.h,
                                )
                              ],
                            ),
                            Row(
                              children: [
                                CustomText(
                                  '29 Jul 2019    /   ',
                                  fontSize: 10.sp,
                                ),
                                CustomText(
                                  '03:23PM',
                                  fontSize: 10.sp,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 16.w,
                  ),
                  HomeSellerWidget(
                    title: '\$850',
                    color: Color(0xff44B66B),
                    subTitle: 'Total earnings',
                    progress: .4,
                  ),
                  SizedBox(
                    width: 8.w,
                  ),
                  HomeSellerWidget(
                    title: '20',
                    color: Color(0xff3479D1),
                    subTitle: 'The number of \nongoing deals',
                    progress: .7,
                  ),
                  SizedBox(
                    width: 16.w,
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 16.w,
                  ),
                  HomeSellerWidget(
                    title: '20',
                    color: Color(0xffE94528),
                    subTitle: 'The number of\ncompleted transactions',
                    progress: .6,
                  ),
                  SizedBox(
                    width: 8.w,
                  ),
                  HomeSellerWidget(
                    title: '\$1200',
                    color: Color(0xffEDBE46),
                    subTitle: 'Total sales',
                    progress: .4,
                  ),
                  SizedBox(
                    width: 16.w,
                  ),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    Container(
                      height: 45.h,
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
                                  '6 months'.tr(),
                                  color: Colors.black,
                                ),
                              ),
                              Tab(
                                child: CustomText(
                                  'week'.tr(),
                                  color: Colors.black,
                                ),
                              ),
                            ]),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 1000.h,
                child: TabBarView(children: [
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 16.w),
                        height: 300.h,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey, width: .5),
                            borderRadius: BorderRadius.circular(10)),
                        child: SfCartesianChart(
                          plotAreaBorderWidth: 0,
                          title: ChartTitle(
                              text: 'Quarterly wise sales of products'.tr()),
                          legend: Legend(isVisible: false),
                          primaryXAxis: CategoryAxis(
                            majorGridLines: const MajorGridLines(width: 0),
                          ),
                          primaryYAxis: NumericAxis(
                              rangePadding: ChartRangePadding.none,
                              axisLine: const AxisLine(width: 0),
                              majorTickLines: const MajorTickLines(size: 0)),
                          series: _getStackedColumnSeries(),
                          tooltipBehavior: _tooltipBehavior,
                        ),
                      ),
                      SizedBox(
                        height: 30.h,
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 16.w),
                        child: SfCartesianChart(
                          plotAreaBorderWidth: 0,
                          title:
                          ChartTitle(text: 'Monthly expense of a family'),
                          legend: Legend(isVisible: false),
                          primaryXAxis: CategoryAxis(
                            majorGridLines: const MajorGridLines(width: 0),
                          ),
                          primaryYAxis: NumericAxis(
                              maximum: 200,
                              axisLine: const AxisLine(width: 0),
                              labelFormat: r'${value}',
                              majorTickLines: const MajorTickLines(size: 0)),
                          series: _getStackedLineSeries(),
                          // trackballBehavior: _trackballBehavior,
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 16.w),
                        height: 300.h,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey, width: .5),
                            borderRadius: BorderRadius.circular(10)),
                        child: SfCartesianChart(
                          plotAreaBorderWidth: 0,
                          title: ChartTitle(
                              text: 'Total sales'.tr(),
                              textStyle: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 14.0.sp,
                              )),
                          legend: Legend(isVisible: false),
                          primaryXAxis: CategoryAxis(
                            majorGridLines: const MajorGridLines(width: 0),
                          ),
                          primaryYAxis: NumericAxis(
                              rangePadding: ChartRangePadding.none,
                              axisLine: const AxisLine(width: 0),
                              majorTickLines: const MajorTickLines(size: 0)),
                          series: _getStackedColumnSeries(),
                          tooltipBehavior: _tooltipBehavior,
                        ),
                      ),
                      SizedBox(
                        height: 30.h,
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 16.w),
                        child: SfCartesianChart(
                          plotAreaBorderWidth: 0,
                          title: ChartTitle(text: 'Average number of sales'),
                          legend: Legend(isVisible: false),
                          primaryXAxis: CategoryAxis(
                            majorGridLines: const MajorGridLines(width: 0),
                          ),
                          primaryYAxis: NumericAxis(
                              maximum: 200,
                              axisLine: const AxisLine(width: 0),
                              labelFormat: r'${value}',
                              majorTickLines: const MajorTickLines(size: 0)),
                          series: _getStackedLineSeries(),
                          // trackballBehavior: _trackballBehavior,
                        ),
                      )
                    ],
                  ),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
