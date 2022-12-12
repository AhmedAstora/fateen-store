import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:twnty2/UI/Screens/DealsScreen/show_dialog_deals_%20widget.dart';
import 'package:twnty2/UI/Utils/constant.dart';

import '../../CustomWidget/back_appBar_widget.dart';
import '../../CustomWidget/custom_text.dart';

class DealsScreen extends StatelessWidget {

  List<Color> colors = [
    Color(0xff44B66B),
    Color(0xff3479D1),
    Color(0xffCF3030),
    Color(0xffEDBE46),
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
            'Deals ',
            fontSize: 16.sp,
            color: Colors.black,
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: InkWell(
                onTap: ()
                {
                  showDialog(context: context, builder: (_)=>DeleteDialogDealsWidget()
                  );
                },
                child: Icon(
                  Icons.delete,
                  size: 25.0,
                  color: mainAppColor,
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 83.h,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.grey, width: 0.2)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 10.w,
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            'assets/images/requestssiller.png',
                            fit: BoxFit.cover,
                            height: 66.h,
                            width: 66.w,
                          ),
                        ),
                        SizedBox(
                          width: 15.w,
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomText(
                                  'T-shirt, Turkish cotton material',
                                  fontSize: 10.0.sp,
                                ),
                                Row(
                                  children: [
                                    CustomText(
                                      'Quantity:',
                                      fontSize: 10.0.sp,
                                    ),
                                    SizedBox(
                                      width: 30.w,
                                    ),
                                    CustomText(
                                      '50',
                                      fontSize: 10.0.sp,
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    CustomText(
                                      'Total price:',
                                      fontSize: 10.0.sp,
                                    ),
                                    SizedBox(
                                      width: 20.w,
                                    ),
                                    CustomText(
                                      '520&',
                                      fontSize: 12.0.sp,
                                      color: mainAppColor,
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
                SizedBox(
                  height: 20.h,
                ),
                CustomText(
                  'Order details',
                  fontSize: 16.sp,
                ),
                SizedBox(
                  height: 12.h,
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Color(0x80999ba9)),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      // mainAxisSize: MainAxisSize.min,
                      children: [
                        Row(
                          children: [
                            CustomText(
                              'Size :',
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w500,
                            ),
                            SizedBox(
                              width: 102.w,
                            ),
                            CustomText(
                              'S - M - L - XL',
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 12.h,
                        ),
                        Container(
                          child: Row(
                            children: List.generate(
                                80 ~/ 1,
                                    (index) => Expanded(
                                  child: Container(
                                    color: index % 2 == 0
                                        ? Colors.transparent
                                        : Colors.grey.withOpacity(.99),
                                    height: .9,
                                  ),
                                )),
                          ),
                        ),
                        SizedBox(
                          height: 12.h,
                        ),
                        Row(
                          children: [
                            CustomText(
                              'Color:',
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w500,
                            ),
                            SizedBox(
                              width: 90.w,
                            ),
                            Expanded(
                              child: Container(
                                  height: (4 / 2) * 13.h,
                                  child: GridView.builder(
                                    padding: EdgeInsets.only(top: 5),
                                    itemCount: 4,
                                    physics: NeverScrollableScrollPhysics(),
                                    gridDelegate:
                                    SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 4,
                                      mainAxisExtent: 17.h,
                                      crossAxisSpacing: 1.0,
                                      mainAxisSpacing: 1.0,
                                    ),
                                    itemBuilder:
                                        (BuildContext context, int index) {
                                      return CircleAvatar(
                                        backgroundColor: (colors[index]),
                                      );
                                    },
                                  )),
                            ),
                            SizedBox(
                              width: 75.w,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 12.h,
                        ),
                        Container(
                          child: Row(
                            children: List.generate(
                                80 ~/ 1,
                                    (index) => Expanded(
                                  child: Container(
                                    color: index % 2 == 0
                                        ? Colors.transparent
                                        : Colors.grey.withOpacity(.99),
                                    height: .9,
                                  ),
                                )),
                          ),
                        ),
                        SizedBox(
                          height: 12.h,
                        ),
                        Row(
                          children: [
                            CustomText(
                              'The date of purchase:',
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w500,
                            ),
                            SizedBox(
                              width: 15.w,
                            ),
                            CustomText(
                              '20-12-2022',
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 12.h,
                        ),
                        Container(
                          child: Row(
                            children: List.generate(
                                80 ~/ 1,
                                    (index) => Expanded(
                                  child: Container(
                                    color: index % 2 == 0
                                        ? Colors.transparent
                                        : Colors.grey.withOpacity(.99),
                                    height: .9,
                                  ),
                                )),
                          ),
                        ),
                        SizedBox(
                          height: 12.h,
                        ),
                        Row(
                          children: [
                            CustomText(
                              'Status:',
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w500,
                            ),
                            SizedBox(
                              width: 87.w,
                            ),
                            CustomText(
                              'Pending',
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 24 .h,
                ),
                 TabBar(
                      indicatorColor: Colors.black,
                      indicatorWeight: 1,
                      tabs: [
                        Tab(
                          child: CustomText(
                            'Description',
                            color: Colors.black,
                            fontSize: 12.0.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Tab(
                          child: CustomText(
                            'Terms of the deal',
                            color: Colors.black,
                            fontSize: 12.0.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ]),

                Container(
                  height: 150,
                  child: TabBarView(children: [
                    SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment:
                        CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 40.0.h,
                          ),
                          CustomText(
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus'
                                ' placerat, ex non ornare commodo, lectus elit laoreet massa, ac'
                                ' congue elit magna eu elit. Fusce suscipit quis mi quis sodales.'
                                ' Nulla blandit ut sapien tristique mattis. Nulla ut ultricies velit.'
                                ' Pellentesque luctus non ligula at rhoncus. Sed at tincidunt magna.'
                                ' Morbi a metus est. Suspendisse vitae feugiat libero.',
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment:
                        CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 40.0.h,
                          ),
                          CustomText(
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus'
                                ' placerat, ex non ornare commodo, lectus elit laoreet massa, ac'
                                ' congue elit magna eu elit. Fusce suscipit quis mi quis sodales.'
                                ' Nulla blandit ut sapien tristique mattis. Nulla ut ultricies velit.'
                                ' Pellentesque luctus non ligula at rhoncus. Sed at tincidunt magna.'
                                ' Morbi a metus est. Suspendisse vitae feugiat libero.',
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ],
                      ),
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
