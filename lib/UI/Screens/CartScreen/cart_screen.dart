import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:twnty2/UI/CustomWidget/custom_text.dart';
import 'package:twnty2/UI/Utils/constant.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: Icon(
          Icons.keyboard_arrow_left_outlined,
          size: 30,
          color: Colors.black,
        ),
        centerTitle: true,
        title: CustomText(
          'My Cart',
          fontSize: 16.0.sp,
          fontWeight: FontWeight.w400,
          color: Colors.black,
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              height: 115.h,
              width: 343.w,
              decoration:
                  BoxDecoration(border: Border.all(color: Colors.black)),
              child: Row(
                children: [
                  Container(
                    height: 103.h,
                    width: 87.w,
                    color: Colors.red,
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomText(
                        'Sweet Black Shirt',
                        fontWeight: FontWeight.w400,
                        fontSize: 16.0.sp,
                      ),
                      SizedBox(
                        height: 5.w,
                      ),
                      CustomText(
                        'Size L',
                        fontWeight: FontWeight.w400,
                        fontSize: 14.0.sp,
                        color: Color(0xff99969D),
                      ),
                      SizedBox(
                        height: 16.w,
                      ),
                      Row(
                        children: [
                          CustomText(
                            '&40.00',
                            fontWeight: FontWeight.w500,
                            fontSize: 12.0.sp,
                            color: Color(0xff99969D),
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          CustomText('&22.00',
                              fontWeight: FontWeight.w700,
                              fontSize: 16.0.sp,
                              color: mainAppColor),
                          SizedBox(
                            width: 41.w,
                          ),
                          Container(
                            height: 22.h,
                            width: 67.w,
                            child: Row(

                              children: [
                                Container(
                                  height: 22.h,
                                  width: 20.w,
                                  child: Icon(Icons.minimize_sharp,size: 15.sp,color: Colors.black,),
                                  decoration: BoxDecoration(
                                      color: Colors.grey,
                                      borderRadius: BorderRadius.circular(5)),

                                ),
                                Container(
                                    height: 22.h,
                                    width: 27.w,
                                    color: Colors.white,
                                    child: Center(
                                        child: CustomText(
                                      '1',
                                      fontSize: 12.0.sp,
                                      fontWeight: FontWeight.w700,
                                    ))),
                                Container(
                                  height: 22.h,
                                  width: 20.w,
                                  child: Icon(Icons.add,size: 15.sp,color: Colors.white,),
                                  decoration: BoxDecoration(
                                      color: mainAppColor,
                                      borderRadius: BorderRadius.circular(5)),

                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
