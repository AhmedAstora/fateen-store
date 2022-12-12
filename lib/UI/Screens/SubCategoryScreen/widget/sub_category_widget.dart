import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:twnty2/Helper/Providers/app_provider.dart';
import 'package:twnty2/UI/CustomWidget/custom_text.dart';
import 'package:twnty2/UI/Utils/constant.dart';

class SubCategoryWidget extends StatelessWidget {
  int? index;


  SubCategoryWidget({this.index});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Consumer<AppProvider>(builder: (context, provider, _) {
      return InkWell(
        onTap: () {
          provider.selectedSubCategory = index!;
          provider.notifyListeners();
        },
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 5.w),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: provider.selectedSubCategory == index
                  ? mainAppColor
                  : Colors.transparent),
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 5.h),
          child: CustomText(
            titles[index!],
            color: provider.selectedSubCategory == index
                ? Colors.white
                : Colors.black,
          ),
        ),
      );
    });
  }
}

List<String> titles = ['All', 'Man', 'Women', 'Children', 'Confusing'];
