import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:twnty2/Helper/Router/router.dart';
import 'package:twnty2/UI/Screens/SharedScreens/AddressScreen/show_dialog_widget.dart';
import 'package:twnty2/UI/Utils/constant.dart';

import '../../../CustomWidget/back_appBar_widget.dart';
import '../../../CustomWidget/custom_text.dart';
import 'add_address_screen.dart';

class data {
  String? title;
  String? title1;

  data({
    this.title,
    this.title1,
  });
}

class AddressScreen extends StatelessWidget {
  List<data> list = [
    data(
      title: 'Saudi Arabia',
      title1:
          'Saudi Arabia, Riyadh, Al-Suwaidi Al-\nGharbi District, Building 5, Flat 12  ',
    ),
    data(
      title: 'Saudi Arabia',
      title1:
          'Saudi Arabia, Riyadh, Al-Suwaidi Al-\nGharbi District, Building 5, Flat 12   ',
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
          'Address',
          fontSize: 16.sp,
          color: Colors.black,
        ),
        actions: [
          InkWell(
            onTap: () {
              RouterHelper.routerHelper
                  .routingToSpecificWidgetWithoutPop(AddAddressScreen());
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Icon(
                Icons.add_circle_outline,
                size: 25.0,
                color: Colors.black,
              ),
            ),
          )
        ],
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

        children: [
          Container(
            height: 120.h,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xcdf8f8f8)),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/images/addressimage.png',
                    height: 21.h,
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
                        fontSize: 12.0.sp,
                        color: Color(0xff595959),
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Container(
                        height: 0.5,
                        width: 266,
                        color: Colors.grey[400],
                      ),
                      Row(
                        children: [
                          CustomText(
                            'Edit',
                            fontSize: 12.0.sp,
                            color: Color(0xff595959),
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          CustomText(
                            'Delete',
                            fontSize: 12.0.sp,
                            color:mainAppColor,
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          CustomText(
                            'Set default',
                            fontSize: 12.0.sp,

                          ),
                        ],
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
                              Icons.check,
                              size: 25.0.sp,
                              color: Colors.lightGreen,
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
