import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:twnty2/Helper/Providers/app_provider.dart';

import '../../../../CustomWidget/custom_text.dart';



class SizeProductWidget extends StatelessWidget {
  String? title;
  int? index;

  SizeProductWidget({this.title, this.index});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Consumer<AppProvider>(builder: (context, provider, _) {
      return InkWell(
        onTap: () {
          provider.selectedSize = index!;
          provider.notifyListeners();
        },
        child: Container(
          alignment: Alignment.center,
          height: 32.h,
          decoration: BoxDecoration(
              color: provider.selectedSize == index
                  ? Color(0xffE94E1B)
                  : Color(0x1808151f),
              borderRadius: BorderRadius.circular(100)),
          child: CustomText(
            title ?? "",
            color: provider.selectedSize == index ? Colors.white : Colors.black,
          ),
        ),
      );
    });
  }
}
