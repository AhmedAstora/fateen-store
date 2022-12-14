import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import '../../CustomWidget/back_appBar_widget.dart';
import '../../CustomWidget/custom_text.dart';
import '../../Utils/constant.dart';


class _ChartData {
  _ChartData(this.x, this.y1, this.y2, this.y3, this.y4);

  final String x;
  final num y1;
  final num y2;
  final num y3;
  final num y4;
}

class HomeSellerScreen extends StatelessWidget {
  List<_ChartData>? chartData = <_ChartData>[
    _ChartData('Q1', 50, 55, 72, 65),
    _ChartData('Q2', 80, 75, 70, 60),
    _ChartData('Q3', 35, 45, 55, 52),
    _ChartData('Q4', 65, 50, 70, 65),
  ];

  TooltipBehavior? _tooltipBehavior;

  List<ChartSeries<_ChartData, String>> _getStackedColumnSeries() {
    return <ChartSeries<_ChartData, String>>[
      StackedColumn100Series<_ChartData, String>(
          color: mainAppColor,
          dataSource: chartData!,
          dataLabelSettings: const DataLabelSettings(isVisible: false),
          xValueMapper: (_ChartData sales, _) => sales.x,
          yValueMapper: (_ChartData sales, _) => sales.y4,
          name: 'Product D')
    ];
  }

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
            'Dashboard',
            fontSize: 16.sp,
            color: Colors.black,
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: InkWell(
                onTap: () {},
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
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
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
                                    'Hi, Abu Omar',
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
                Container(
                  height: 300,
                  child: GridView.count(
                    crossAxisCount: 2,
                    crossAxisSpacing: 6.0,
                    mainAxisSpacing: 12.0,
                    childAspectRatio: 1.9 / 1.44,
                    padding: EdgeInsets.only(top: 5),
                    physics: NeverScrollableScrollPhysics(),
                    children: [
                      Container(
                        height: 118.h,
                        width: 169.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.12),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset:
                                  Offset(0, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 15),
                          child: Column(
                            children: [
                              CustomText(
                                '&850',
                                fontWeight: FontWeight.w600,
                                color: Color(0xff44B66B),
                              ),
                              CustomText(
                                'Total earnings',
                                fontSize: 10,
                              ),
                              Spacer(),
                              Slider(
                                min: 0,
                                max: 120,
                                value: 50,
                                activeColor: Colors.green,
                                thumbColor: Colors.transparent,
                                inactiveColor: Colors.grey[300],
                                onChanged: (value) => SizedBox(),
                              )
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: 118.h,
                        width: 169.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.12),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset:
                                  Offset(0, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 15),
                          child: Column(
                            children: [
                              CustomText(
                                '20',
                                fontWeight: FontWeight.w600,
                                color: Color(0xff3479D1),
                              ),
                              CustomText(
                                'The number of\nongoing deals',
                                fontSize: 10,
                              ),
                              Spacer(),
                              Slider(
                                min: 0,
                                max: 120,
                                value: 80,
                                activeColor: Color(0xff3479D1),
                                thumbColor: Colors.transparent,
                                inactiveColor: Colors.grey[300],
                                onChanged: (value) => SizedBox(),
                              )
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: 118.h,
                        width: 169.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.12),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset:
                                  Offset(0, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              CustomText(
                                '15',
                                fontWeight: FontWeight.w600,
                                color: Color(0xffE94528),
                              ),
                              CustomText(
                                '        The number of\ncompleted transactions',
                                fontSize: 10,
                              ),
                              Spacer(),
                              Slider(
                                min: 0,
                                max: 120,
                                value: 75,
                                activeColor: Color(0xffE94528),
                                thumbColor: Colors.transparent,
                                inactiveColor: Colors.grey[300],
                                onChanged: (value) => SizedBox(),
                              )
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: 118.h,
                        width: 169.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.12),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset:
                                  Offset(0, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 15),
                          child: Column(
                            children: [
                              CustomText(
                                '&1200',
                                fontWeight: FontWeight.w600,
                                color: Color(0xffEDBE46),
                              ),
                              CustomText(
                                'Total sales',
                                fontSize: 10,
                              ),
                              Spacer(),
                              Slider(
                                min: 0,
                                max: 120,
                                value: 100,
                                activeColor: Color(0xffEDBE46),
                                thumbColor: Colors.transparent,
                                inactiveColor: Colors.grey[300],
                                onChanged: (value) => SizedBox(),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10.h,
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
                                    '6 months',
                                    color: Colors.black,
                                  ),
                                ),
                                Tab(
                                  child: CustomText(
                                    'week',
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
                        SfCartesianChart(
                          plotAreaBorderWidth: 0,
                          title: ChartTitle(
                              text: 'Quarterly wise sales of products'),
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
                        SizedBox(
                          height: 30.h,
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          height: 300.h,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(10)),
                          child: SfCartesianChart(
                            plotAreaBorderWidth: 0,
                            title: ChartTitle(
                                text: 'Total sales',
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
                                majorTickLines: const MajorTickLines(size:0)),
                            series: _getStackedColumnSeries(),
                            tooltipBehavior: _tooltipBehavior,
                          ),
                        ),
                        SizedBox(
                          height: 30.h,
                        ),
                      ],
                    ),
                  ]),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
