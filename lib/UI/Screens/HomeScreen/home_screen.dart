import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';
import 'package:twnty2/UI/CustomWidget/custom_text.dart';
import 'package:twnty2/UI/CustomWidget/slider/carousel_slider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true ,
        title:   Column(
          children: [
            CustomText(
              'Your Location',
              height: 1.2,
              fontSize: 12.sp,
              color: Colors.black,
              maxLines: 1,
              fontWeight: FontWeight.w500,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 0),
              child: CustomText(
                'Saudi Arabia',
                fontSize: 14.sp,
                color: Colors.black,
                height: 1.2,
                maxLines: 1,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [

                SizedBox(
                  height: 15.h,
                ),
                Container(
                  width: 339.w,
                  height: 39.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(23.5),
                    color: Color(0xFFF1F1F1),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      children: [
                        Icon(
                          Icons.search,
                          size: 30.0,
                        ),
                        SizedBox(
                          width: 11.w,
                        ),
                        CustomText(
                          'Search product here...',
                          color: Color(0xFF000000).withOpacity(0.5),
                          fontSize: 10.sp,
                        ),
                        Spacer(),
                        ImageIcon(
                          AssetImage("assets/images/icon_category.png"),
                          color: Colors.black,
                          size: 30,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 15.h,
                ),
                // Column(children: [
                //   Container(
                //     margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
                //     decoration: BoxDecoration(
                //       color:Colors.grey,
                //       borderRadius: BorderRadius.all(Radius.circular(20)),
                //     ),
                //     child: ClipRRect(
                //       borderRadius: BorderRadius.all(Radius.circular(20)),
                //       child: AspectRatio(
                //         aspectRatio: 16/9,
                //         child: Container(
                //           color: Colors.grey,
                //         ),
                //       ),
                //     ),
                //   ),
                //   SizedBox(
                //     height:17.h ,),
                //   Row(
                //     mainAxisAlignment: MainAxisAlignment.center,
                //     children: [
                //       Container(
                //         height: 7.h,
                //         width: 7.w,
                //         decoration: BoxDecoration(
                //           shape: BoxShape.circle,
                //           color: Colors.grey,
                //         ),
                //       ),
                //       SizedBox(width: 3.w,),
                //       Container(
                //         height: 7.h,
                //         width: 7.w,
                //         decoration: BoxDecoration(
                //           shape: BoxShape.circle,
                //           color: Colors.grey,
                //         ),
                //       ),
                //       SizedBox(width: 3.w,),
                //       Container(
                //         height: 7.h,
                //         width: 7.w,
                //         decoration: BoxDecoration(
                //           shape: BoxShape.circle,
                //           color: Colors.grey,
                //         ),
                //       ),
                //       SizedBox(width: 3.w,),
                //       Container(
                //         height: 7.h,
                //         width: 7.w,
                //         decoration: BoxDecoration(
                //           shape: BoxShape.circle,
                //           color: Colors.grey,
                //         ),
                //       ),
                //       SizedBox(width: 3.w,),
                //     ],
                //   ),
                // ],)
                CarouselSliderImage(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
