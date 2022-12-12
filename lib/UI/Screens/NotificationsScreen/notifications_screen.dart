import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../CustomWidget/back_appBar_widget.dart';
import '../../CustomWidget/custom_text.dart';
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
      title: 'New deals have been added that\nexpire after 14 days',
      title1: 'Yesterday 8:49 PM',
      title2: 'New alerts',
    ),
    data(
      title: 'New deals have been added that\n expire after 14 days',
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
        leading: BackAppBarWidget(),
        title: CustomText(
          'notifications',
          fontSize: 16.sp,
          color: Colors.black,
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: list.length,
          itemBuilder: (context, index) {
            return buildItem(list[index], context);
          }),
    );
  }

  Widget buildItem(data model, context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomText(
            '${model.title2}',
            fontSize: 12.sp,
          ),
          SizedBox(
            height: 10.h,
          ),
          Container(
            height: 80.h, 
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xcddadada)),
            child: Padding(
              padding: const EdgeInsets.only(top: 10, right: 10, left: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
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
                      CustomText('${model.title}'),
                      CustomText(
                        '${model.title1}',
                        fontSize: 10.0.sp,
                        color: Color(0xff595959),
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
