import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:twnty2/Helper/Providers/app_provider.dart';

import '../custom_image_network.dart';

final List<String> imagesList = [
  'https://cdn.pixabay.com/photo/2017/04/04/18/07/ice-cream-2202561_1280.jpg',
  'https://cdn.pixabay.com/photo/2019/01/14/17/25/gelato-3932596_1280.jpg',
  'https://cdn.pixabay.com/photo/2016/11/18/19/00/breads-1836411_1280.jpg',
  'https://cdn.pixabay.com/photo/2020/11/01/23/22/breakfast-5705180_1280.jpg',
];

class CarouselSliderImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<AppProvider>(builder: (context, provider, _a) {
      return Column(
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

        ],
      );
    });
  }
}
