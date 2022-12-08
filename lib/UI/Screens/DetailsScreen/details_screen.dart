import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:twnty2/UI/CustomWidget/custom_bottom.dart';
import 'package:twnty2/UI/CustomWidget/custom_text.dart';
import 'package:twnty2/UI/Utils/constant.dart';
import '../../CustomWidget/slider/custom_indicator.dart';
import '../../CustomWidget/slider/slide_dots.dart';
import '../../CustomWidget/slider/slide_width_dots.dart';

class DetailsScreen extends StatelessWidget {
  List<String> images = [
    "S : 68cm x 70cm",
    "M : 72cm x 74cm",
    "L : 75cm x 77cm",
    "XL : 78cm x 80cm"
  ];
  List<Color> colors = [
    Color(0xffD70000),
    Color(0xff222222),
    Color(0xff1100D7),
    Color(0xff964206),
  ];
  List<Icon> icon = [
    Icon(Icons.check),
    Icon(Icons.check),
    Icon(Icons.check),
    Icon(Icons.check),
  ];
  List<Color> colorContainer = [
    Color(0x1808151f),
    Color(0xffE94E1B),
    Color(0x1808151f),
    Color(0x1808151f),
  ];
  var boardController = PageController();
  late TabController tabController;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                alignment: Alignment.topLeft,
                children: [
                  Container(
                      height: 339.0.h,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(25),
                              bottomRight: Radius.circular(25))),
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          Image.asset(
                            'assets/images/details.png',
                            fit: BoxFit.cover,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 18.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height: 79.0.h,
                                  width: 78.0.w,
                                  decoration: BoxDecoration(
                                    color: Color(0x49474761),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height: 6.0.h,
                                      ),
                                      Text(
                                        '15',
                                        style: TextStyle(
                                          fontSize: 20.0.sp,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.white,
                                        ),
                                      ),
                                      Text(
                                        'Day',
                                        style: TextStyle(
                                          fontSize: 16.0.sp,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: 10.0.w,
                                ),
                                Container(
                                  height: 79.0.h,
                                  width: 78.0.w,
                                  decoration: BoxDecoration(
                                    color: Color(0x49474761),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height: 6.0.h,
                                      ),
                                      Text(
                                        '60',
                                        style: TextStyle(
                                          fontSize: 20.0.sp,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.white,
                                        ),
                                      ),
                                      Text(
                                        'Min',
                                        style: TextStyle(
                                          fontSize: 16.0.sp,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: 10.0.w,
                                ),
                                Container(
                                  height: 79.0.h,
                                  width: 78.0.w,
                                  decoration: BoxDecoration(
                                    color: Color(0x49474761),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height: 6.0.h,
                                      ),
                                      Text(
                                        '23',
                                        style: TextStyle(
                                          fontSize: 20.0.sp,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.white,
                                        ),
                                      ),
                                      Text(
                                        'sec',
                                        style: TextStyle(
                                          fontSize: 16.0.sp,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      )),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10.0, vertical: 50.0),
                    child: Icon(
                      Icons.keyboard_arrow_left_outlined,
                      size: 30,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10.0.h,
              ),
              Container(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    for (int i = 0; i < 4; i++)
                      if (i == 0)
                        SlideWidthDots(true, mainAppColor, Colors.grey)
                      else
                        SlideWidthDots(false, mainAppColor, Colors.grey)
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        CustomText(
                          'Hot Pants',
                          fontSize: 18.0.sp,
                          fontWeight: FontWeight.w500,
                        ),
                        Spacer(),
                        Container(
                          width: 75.0.w,
                          height: 60.0.h,
                          child: Column(
                            children: [
                              SizedBox(
                                height: 5.0.h,
                              ),
                              CustomText(
                                '£54.43',
                                fontSize: 12.0.sp,
                                fontWeight: FontWeight.w300,
                              ),
                              CustomText(
                                '£129,99',
                                fontSize: 20.0.sp,
                                fontWeight: FontWeight.w600,
                                color: mainAppColor,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        CustomText(
                          'Total Quantity: ',
                          fontSize: 14.0.sp,
                          fontWeight: FontWeight.w500,
                        ),
                        CustomText(
                          '300',
                          fontSize: 14.0.sp,
                          fontWeight: FontWeight.w500,
                          color: Colors.green,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5.0.h,
                    ),
                    Row(
                      children: [
                        CustomText(
                          'The remaining quantity :    ',
                          fontSize: 14.0.sp,
                          fontWeight: FontWeight.w500,
                        ),
                        CustomText(
                          '150',
                          fontSize: 14.0.sp,
                          fontWeight: FontWeight.w500,
                          color: mainAppColor,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10.0.h,
                    ),
                    Row(
                      children: [
                        CustomText(
                          'Condition  :   ',
                          fontSize: 14.0.sp,
                          fontWeight: FontWeight.w500,
                        ),
                        CustomBottom(
                          height: 24.0.h,
                          width: 61.0.w,
                          backgroundColor: Color(0x2a566cba),
                          borderRadius: 50.0,
                          title: 'NEW',
                          style: TextStyle(
                              color: mainAppColor,
                              fontSize: 12.0.sp,
                              fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 7.0.h,
                    ),
                    Row(
                      children: [
                        CustomText(
                          'Weight       :  ',
                          fontSize: 14.0.sp,
                          fontWeight: FontWeight.w400,
                        ),
                        CustomText(
                          '250 Grams',
                          fontSize: 14.0.sp,
                          fontWeight: FontWeight.w500,
                          color: Color(0x9808151f),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5.0.h,
                    ),
                    Row(
                      children: [
                        CustomText(
                          'Category   :  ',
                          fontSize: 14.0.sp,
                          fontWeight: FontWeight.w400,
                        ),
                        CustomText(
                          'Men,s T-shirt',
                          fontSize: 14.0.sp,
                          fontWeight: FontWeight.w500,
                          color: Color(0x9808151f),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 7.0.h,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(
                          'Storefront :  ',
                          fontSize: 14.0.sp,
                          fontWeight: FontWeight.w400,
                        ),
                        Container(
                          height: 40.0.h,
                          width: 213.0.w,
                          child: CustomText(
                            'Disaster Records Merchandise Screenprinted',
                            fontSize: 14.0.sp,
                            fontWeight: FontWeight.w500,
                            color: Color(0x9808151f),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(
                          'Size Chart :  ',
                          fontSize: 14.0.sp,
                          fontWeight: FontWeight.w400,
                        ),
                        Expanded(
                          child: Container(
                              height: (4 / 2) * 50.h,
                              child: GridView.builder(
                                padding: EdgeInsets.only(top: 5),
                                itemCount: 4,
                                physics: NeverScrollableScrollPhysics(),
                                gridDelegate:
                                    SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                  mainAxisExtent: 32.h,
                                  crossAxisSpacing: 8.0,
                                  mainAxisSpacing: 12.0,
                                ),
                                itemBuilder: (BuildContext context, int index) {
                                  return Container(
                                    alignment: Alignment.center,
                                    height: 32.h,
                                    decoration: BoxDecoration(
                                        color: (colorContainer[index]),
                                        borderRadius:
                                            BorderRadius.circular(100)),
                                    child: CustomText(images[index]),
                                  );
                                },
                              )),
                        ),
                        SizedBox(
                          width: 28.w,
                        ),
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(
                          'Size Chart :  ',
                          fontSize: 14.0.sp,
                          fontWeight: FontWeight.w400,
                        ),
                        Expanded(
                          child: Container(
                              height: (4 / 2) * 30.h,
                              child: GridView.builder(
                                padding: EdgeInsets.only(top: 5),
                                itemCount: 4,
                                physics: NeverScrollableScrollPhysics(),
                                gridDelegate:
                                    SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 4,
                                  mainAxisExtent: 28.h,
                                  crossAxisSpacing: 1.0,
                                  mainAxisSpacing: 12.0,
                                ),
                                itemBuilder: (BuildContext context, int index) {
                                  return CircleAvatar(
                                    backgroundColor: (colors[index]),
                                    child: icon[index],
                                  );
                                },
                              )),
                        ),
                        SizedBox(
                          width: 155.w,
                        ),
                      ],
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
                      height: 200,
                      child: TabBarView(children: [
                        SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 40.0.h,
                              ),
                              Container(
                                height: 60.h,
                                width: 339.0.w,
                                child: CustomText(
                                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus'
                                  ' placerat, ex non ornare commodo, lectus elit laoreet massa, ac'
                                  ' congue elit magna eu elit. Fusce suscipit quis mi quis sodales.'
                                  ' Nulla blandit ut sapien tristique mattis. Nulla ut ultricies velit.'
                                  ' Pellentesque luctus non ligula at rhoncus. Sed at tincidunt magna.'
                                  ' Morbi a metus est. Suspendisse vitae feugiat libero.',
                                  fontSize: 10.sp,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(
                                height: 40.0.h,
                              ),
                              Row(
                                children: [
                                  CustomBottom(
                                    height: 55.0.sp,
                                    width: 266.0.sp,
                                    backgroundColor: mainAppColor,
                                    title: 'BUY NOW',
                                    borderRadius: 100,
                                  ),
                                  Spacer(),
                                  CircleAvatar(
                                      radius: 27,
                                      backgroundColor: Color(0xff15172E),
                                      child: Image.asset(
                                        'assets/images/CartIcon.png',
                                        height: 22.h,
                                        width: 26.w,
                                      ))
                                ],
                              ),
                              SizedBox(
                                height: 30.0.h,
                              ),
                            ],
                          ),
                        ),
                        SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 40.0.h,
                              ),
                              Container(
                                height: 60.h,
                                width: 339.0.w,
                                child: CustomText(
                                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus'
                                  ' placerat, ex non ornare commodo, lectus elit laoreet massa, ac'
                                  ' congue elit magna eu elit. Fusce suscipit quis mi quis sodales.'
                                  ' Nulla blandit ut sapien tristique mattis. Nulla ut ultricies velit.'
                                  ' Pellentesque luctus non ligula at rhoncus. Sed at tincidunt magna.'
                                  ' Morbi a metus est. Suspendisse vitae feugiat libero.',
                                  fontSize: 10.sp,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(
                                height: 40.0.h,
                              ),
                              Row(
                                children: [
                                  CustomBottom(
                                    height: 55.0.sp,
                                    width: 266.0.sp,
                                    backgroundColor: mainAppColor,
                                    title: 'BUY NOW',
                                    borderRadius: 100,
                                  ),
                                  Spacer(),
                                  CircleAvatar(
                                      radius: 27,
                                      backgroundColor: Color(0xff15172E),
                                      child: Image.asset(
                                        'assets/images/CartIcon.png',
                                        height: 22.h,
                                        width: 26.w,
                                      ))
                                ],
                              ),
                              SizedBox(
                                height: 30.0.h,
                              ),
                            ],
                          ),
                        ),


                      ]
                      ),
                    ),
                    SizedBox(
                      height: 200,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
