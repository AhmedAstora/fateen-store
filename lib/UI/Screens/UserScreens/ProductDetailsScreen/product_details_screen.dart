import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:twnty2/Helper/Providers/app_provider.dart';
import 'package:twnty2/UI/CustomWidget/custom_bottom.dart';
import 'package:twnty2/UI/CustomWidget/custom_text.dart';
import 'package:twnty2/UI/Screens/UserScreens/ProductDetailsScreen/widget/timear_widget.dart';
import 'package:twnty2/UI/Utils/constant.dart';
import '../../../CustomWidget/custom_image_network.dart';
import '../../../CustomWidget/linear_progress_widget.dart';
import '../../../CustomWidget/slider/slide_width_dots.dart';

class ProductDetailsScreen extends StatelessWidget {
  int? type;

  ProductDetailsScreen({this.type});

  List<String> images = [
    "S : 68cm x 70cm",
    "M : 72cm x 74cm",
    "L : 75cm x 77cm",
    "XL : 78cm x 80cm"
  ];

  final List<String> imagesList = [
    'https://images.unsplash.com/photo-1489987707025-afc232f7ea0f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1740&q=80',
    'https://images.unsplash.com/photo-1516762689617-e1cffcef479d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=711&q=80',
    'https://images.unsplash.com/photo-1556905055-8f358a7a47b2?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8Y2xvdGhlc3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=800&q=60',
    'https://images.unsplash.com/photo-1558769132-cb1aea458c5e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1374&q=80',
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
      child: Consumer<AppProvider>(builder: (context, provider, _) {
        return Scaffold(
            persistentFooterButtons: [
              if (type != 1)
                Row(
                  children: [
                    SizedBox(
                      width: 8.w,
                    ),
                    Expanded(
                      child: CustomBottom(
                        height: 50.0.sp,
                        backgroundColor: mainAppColor,
                        title: 'BUY NOW'.tr(),
                        borderRadius: 100,
                      ),
                    ),
                    SizedBox(
                      width: 12.w,
                    ),
                    CircleAvatar(
                        radius: 25,
                        backgroundColor: Color(0xff15172E),
                        child: Image.asset(
                          'assets/images/CartIcon.png',
                          height: 22.h,
                          width: 26.w,
                        )),
                    SizedBox(
                      width: 8.w,
                    ),
                  ],
                ),
            ],
            body: CustomScrollView(
              slivers: [
                SliverAppBar(
                  snap: false,
                  pinned: true,
                  floating: true,
                  expandedHeight: 300,
                  centerTitle: true,
                  elevation: 0,
                  leading: Text(""),
                  backgroundColor: Colors.white,
                  bottom: PreferredSize(
                    preferredSize: Size.fromHeight(122),
                    child: Container(
                      padding: EdgeInsets.only(bottom: 10.0.h),
                      child: Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              TimearWidget(
                                num: '15',
                                title: 'Day',
                                height: 78.h,
                                width: 78.w,
                              ),
                              SizedBox(
                                width: 10.0.w,
                              ),
                              TimearWidget(
                                num: '60',
                                title: 'Min',
                                height: 78.h,
                                width: 78.w,
                              ),
                              SizedBox(
                                width: 10.0.w,
                              ),
                              TimearWidget(
                                num: '23',
                                title: 'sec',
                                height: 78.h,
                                width: 78.w,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  flexibleSpace: FlexibleSpaceBar(
                    background: Stack(
                      alignment: Alignment.topLeft,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(25),
                              bottomLeft: Radius.circular(25)),
                          child: CarouselSlider(
                            items: imagesList
                                .map((item) => CustomImageNetwork(
                                      image: item,
                                      radius: 0,
                                      fit: BoxFit.cover,
                                      width: double.infinity.w,
                                      height: 339.0.h,
                                    ))
                                .toList(),
                            options: CarouselOptions(
                              viewportFraction: 1,
                              autoPlay: false,
                              height: 339.0.h,
                              enlargeCenterPage: true,
                              scrollDirection: Axis.horizontal,
                              onPageChanged: (index, reason) {
                                provider.currentIndex = index;
                                provider.notifyListeners();
                              },
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10.0, vertical: 50.0),
                          child: Row(
                            children: [
                              Icon(
                                Icons.keyboard_arrow_left_outlined,
                                size: 30,
                              ),
                              Spacer(),
                              Icon(Icons.favorite_border),
                              Icon(Icons.share_outlined),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SliverToBoxAdapter(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 10.h,
                        ),
                        Container(
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              for (int i = 0; i < 4; i++)
                                if (i == 0)
                                  SlideWidthDots(i == provider.currentIndex,
                                      mainAppColor, Colors.grey)
                                else
                                  SlideWidthDots(i == provider.currentIndex,
                                      mainAppColor, Colors.grey)
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
                                    'Quilted thermal shirt'.tr(),
                                    fontSize: 18.0.sp,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  Spacer(),
                                  Expanded(
                                    child: Container(
                                      width: 75.0.w,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          SizedBox(
                                            height: 5.0.h,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              CustomText(
                                                '${currency}',
                                                fontSize: 8.0.sp,
                                              ),
                                              CustomText(
                                                '54.43',
                                                fontSize: 12.0.sp,
                                                height: 1,
                                                fontWeight: FontWeight.w300,
                                              ),
                                            ],
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              CustomText(
                                                '${currency}',
                                                height: 1.3,
                                                fontSize: 12.0.sp,
                                                fontWeight: FontWeight.w700,
                                                color: mainAppColor,
                                              ),
                                              CustomText(
                                                '129,99',
                                                height: 1.3,
                                                fontSize: 20.0.sp,
                                                fontWeight: FontWeight.w700,
                                                color: mainAppColor,
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 3.h,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  CustomText(
                                    'The remaining quantity :    '.tr(),
                                    fontSize: 14.0.sp,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  CustomText(
                                    '150',
                                    fontSize: 14.0.sp,
                                    fontWeight: FontWeight.w600,
                                    color: mainAppColor,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10.0.h,
                              ),
                              Row(
                                children: [
                                  CustomLienarProgressWidget(
                                    value: .8,
                                    width: 219.w,
                                    height: 10.h,
                                  ),
                                  SizedBox(
                                    width: 10.w,
                                  ),
                                  CustomText(
                                    '65%',
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w500,
                                    height: 1,
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
                                    'Status    :   '.tr(),
                                    fontSize: 14.0.sp,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  CustomBottom(
                                    height: 24.0.h,
                                    width: 61.0.w,
                                    backgroundColor: Color(0x2a566cba),
                                    borderRadius: 50.0,
                                    title: 'NEW'.tr(),
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
                                    'Weight       :  '.tr(),
                                    fontSize: 14.0.sp,
                                    fontWeight: FontWeight.w400,
                                  ),
                                  CustomText(
                                    '250 Grams'.tr(),
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
                                    'Category   :  '.tr(),
                                    fontSize: 14.0.sp,
                                    fontWeight: FontWeight.w400,
                                  ),
                                  CustomText(
                                    'Men,s T-shirt'.tr(),
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
                                    'Size  :'.tr(),
                                    fontSize: 14.0.sp,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10.w,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomText(
                                    'Colors :  '.tr(),
                                    fontSize: 14.0.sp,
                                    fontWeight: FontWeight.w400,
                                  ),
                                  Expanded(
                                    child: Container(
                                        height: (4 / 2) * 30.h,
                                        child: GridView.builder(
                                          padding: EdgeInsets.only(top: 5),
                                          itemCount: 4,
                                          physics:
                                              NeverScrollableScrollPhysics(),
                                          gridDelegate:
                                              SliverGridDelegateWithFixedCrossAxisCount(
                                            crossAxisCount: 4,
                                            mainAxisExtent: 28.h,
                                            crossAxisSpacing: 1.0,
                                            mainAxisSpacing: 12.0,
                                          ),
                                          itemBuilder: (BuildContext context,
                                              int index) {
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
                              Row(
                                children: [
                                  Image.asset(
                                    'assets/images/coin.png',
                                    height: 27.h,
                                    width: 27.w,
                                  ),
                                  SizedBox(
                                    width: 5.w,
                                  ),
                                  CustomText(
                                    'By:       '.tr(),
                                    fontSize: 14.0.sp,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  CustomText(
                                    'Mahmoud quaider'.tr(),
                                    fontSize: 14.0.sp,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ],
                              ),
                              TabBar(
                                  indicatorColor: Colors.black,
                                  indicatorWeight: 1,
                                  tabs: [
                                    Tab(
                                      child: CustomText(
                                        'Description'.tr(),
                                        color: Colors.black,
                                        fontSize: 12.0.sp,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    Tab(
                                      child: CustomText(
                                        'Terms of the deal'.tr(),
                                        color: Colors.black,
                                        fontSize: 12.0.sp,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ]),
                              Container(
                                height: 300,
                                child: TabBarView(children: [
                                  SingleChildScrollView(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          height: 40.0.h,
                                        ),
                                        Container(
                                          width: 339.0.w,
                                          child: CustomText(
                                            'dealsT1'.tr(),
                                            fontSize: 12.sp,
                                            fontWeight: FontWeight.w500,
                                          ),
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
                                        Container(
                                          width: 339.0.w,
                                          child: CustomText(
                                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus'
                                                    ' placerat, ex non ornare commodo, lectus elit laoreet massa, ac'
                                                    ' congue elit magna eu elit. Fusce suscipit quis mi quis sodales.'
                                                    ' Nulla blandit ut sapien tristique mattis. Nulla ut ultricies velit.'
                                                    ' Pellentesque luctus non ligula at rhoncus. Sed at tincidunt magna.'
                                                    ' Morbi a metus est. Suspendisse vitae feugiat libero.'
                                                .tr(),
                                            fontSize: 12.sp,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ]),
                              ),
                              SizedBox(
                                height: 150.h,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ));
      }),
    );
  }
}
