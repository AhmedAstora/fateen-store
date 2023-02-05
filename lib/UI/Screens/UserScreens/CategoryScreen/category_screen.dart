import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:twnty2/UI/CustomWidget/back_appBar_widget.dart';
import 'package:twnty2/UI/Screens/UserScreens/CategoryScreen/widget/category_widget.dart';

import '../../../CustomWidget/custom_text.dart';

class CategoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: BackAppBarWidget(),
        centerTitle: true,
        title: CustomText(
          'Categories'.tr(),
          fontSize: 16.0.sp,
          color: Colors.black,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                margin: EdgeInsets.symmetric(horizontal: 16.w),
                child: GridView.builder(
                  shrinkWrap: true,
                  padding: EdgeInsets.only(top: 5),
                  itemCount: 10,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    mainAxisExtent: 135.h,
                    crossAxisSpacing: 8.0,
                    mainAxisSpacing: 12.0,
                  ),
                  itemBuilder: (context, index) {
                    return CategoryWidget();
                  },
                )),
          ],
        ),
      ),
    );
  }
}
