import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:twnty2/UI/CustomWidget/custom_text.dart';
import 'package:twnty2/UI/CustomWidget/slider/carousel_slider.dart';
import 'package:twnty2/UI/Utils/constant.dart';

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
                        ImageIcon(
                          AssetImage("assets/images/search.png"),
                          color: Colors.black,
                          size: 30,
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
                CarouselSliderImage(),
                SizedBox(height: 24.h,),
                Row(
                  children: [
                    CustomText('Categories',
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                    color: Color(0XFF545454),),
                    Spacer(),
                    CustomText('See all',
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w500,
                      color: mainAppColor,),
                  ],
                ),
                SizedBox(height: 12.h,),
                Container(
                  width: 100,
                  child: ListView.separated(
                      physics: NeverScrollableScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context,index)=> Row(
                        children: [
                          DottedBorder(
                            borderType: BorderType.Circle,
                            padding: EdgeInsets.all(4.52),
                            child: Container(
                              width: 61.w,
                              height: 61.h,
                              child: CircleAvatar(
                                backgroundColor: Colors.transparent,
                                child: Image.asset('assets/images/img1.png'),
                              ),
                            ),
                          ),
                        ],),
                      separatorBuilder:(context,index)=>SizedBox(width: 21.w,),
                      itemCount: 5),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
