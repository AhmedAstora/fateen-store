import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../CustomWidget/custom_text.dart';
import '../AddressScreen/show_dialog_widget.dart';

class data {
  String? title;
  String? title1;
  String? title2;

  data({
    this.title,
    this.title1,
    this.title2,
  });
}

class NotificationsScreen extends StatelessWidget {
  List<data> list = [
    data(
      title: 'notificationsT1',
      title1: 'Yesterday 8:49 PM',
      title2: 'New alerts',
    ),
    data(
      title: 'notificationsT1',
      title1: 'Yesterday 8:49 PM',
      title2: 'All alerts',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: CustomText(
          'notifications'.tr(),
          fontSize: 16.sp,
          color: Colors.black,
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 10.h,
            ),
            ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                itemCount: list.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return buildItem(list[index], context);
                }),
            SizedBox(
              height: 40.h,
            ),
          ],
        ),
      ),
    );
  }

  Widget buildItem(data model, context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomText(
            '${model.title2}'.tr(),
            fontSize: 12.sp,
            height: 1.2,
          ),
          SizedBox(
            height: 10.h,
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xcddadada)),
            child: Padding(
              padding: EdgeInsets.only(
                  top: 10.h, right: 10.w, left: 10.w, bottom: 10.h),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 10.w,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 7),
                    child: Image.asset(
                      'assets/images/notification.png',
                      height: 21.h,
                    ),
                  ),
                  SizedBox(
                    width: 15.w,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText('${model.title}'.tr()),
                      CustomText(
                        '${model.title1}'.tr(),
                        fontSize: 10.0.sp,
                        color: Color(0xff929292),
                      ),
                    ],
                  ),
                  Spacer(),
                  Column(
                    children: [
                      Container(
                          alignment: Alignment.topRight,
                          child: InkWell(
                            onTap: () {
                              showDialog(
                                  context: context,
                                  builder: (_) => DeleteDialogWidget());
                            },
                            child: Icon(
                              Icons.more_horiz,
                              size: 25.0.sp,
                            ),
                          )),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
