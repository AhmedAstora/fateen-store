import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:twnty2/UI/CustomWidget/custom_image_network.dart';

class AllDealsViewOneWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5.h),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(width: 1.w, color: Colors.grey.withOpacity(.5))),
      child: Row(
        children: [
          CustomImageNetwork(
              image:
                  'https://images.unsplash.com/photo-1516762689617-e1cffcef479d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=711&q=80',
              height: 87.h,
              radius: 10,
              width: 101.w,
              fit: BoxFit.cover)
        ],
      ),
    );
  }
}
