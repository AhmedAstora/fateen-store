import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:twnty2/Helper/Providers/app_provider.dart';
import 'package:twnty2/UI/CustomWidget/slider/slide_width_dots.dart';

import '../../Utils/constant.dart';
import '../custom_image_network.dart';

final List<String> imagesList = [
  'https://images.unsplash.com/photo-1489987707025-afc232f7ea0f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1740&q=80',
  'https://images.unsplash.com/photo-1516762689617-e1cffcef479d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=711&q=80',
  'https://images.unsplash.com/photo-1556905055-8f358a7a47b2?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8Y2xvdGhlc3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=800&q=60',
  'https://images.unsplash.com/photo-1558769132-cb1aea458c5e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1374&q=80',
];

class CarouselSliderImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<AppProvider>(builder: (context, provider, _a) {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          children: [
            CarouselSlider(
              items: imagesList
                  .map((item) => CustomImageNetwork(
                        image: item,
                        radius: 20,
                        fit: BoxFit.cover,
                        width: 339.w,
                        height: 156.h,
                      ))
                  .toList(),
              options: CarouselOptions(
                height: 156.h,
                viewportFraction: 1,
                autoPlay: false,
                enlargeCenterPage: true,
                scrollDirection: Axis.horizontal,
                onPageChanged: (index, reason) {
                  provider.currentIndex = index;
                  provider.notifyListeners();
                },
              ),
            ),
            SizedBox(
              height: 14.h,
            ),
            Container(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  for (int i = 0; i < imagesList.length; i++)
                    if (i == provider.currentIndex)
                      SlideWidthDots(true, mainAppColor, inActiveColor)
                    else
                      SlideWidthDots(false, mainAppColor, inActiveColor)
                ],
              ),
            ),
          ],
        ),
      );
    });
  }
}
