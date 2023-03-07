import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../CustomWidget/custom_text.dart';

class SwitshWidget extends StatelessWidget {

  String text;

  SwitshWidget(this.text);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomText(
          text,
          fontSize: 12.sp,
        ),
        Spacer(),
        Transform.scale(
            scaleX: 0.7,
            scaleY: 0.7,
            alignment: Alignment.topRight,
            child: CupertinoSwitch(
              value: false,
              trackColor: Colors.grey,
              onChanged: (value) {},
              activeColor: Colors.black,
            ))
      ],
    );
  }
}
