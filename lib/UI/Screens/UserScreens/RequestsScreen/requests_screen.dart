import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:provider/provider.dart';
import 'package:twnty2/UI/Screens/UserScreens/RequestsScreen/widgets/request_user_widget.dart';

import '../../../../Helper/Providers/app_provider.dart';
import '../../../CustomWidget/back_appBar_widget.dart';
import '../../../CustomWidget/custom_text.dart';
import '../../../Utils/constant.dart';

class RequestsScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Consumer<AppProvider>(builder: (context, b, _) {
      return DefaultTabController(
        length: 2,
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            elevation: 0.0,
            backgroundColor: Colors.white,
            leading: BackAppBarWidget(),
            title: CustomText(
              'Requests'.tr(),
              fontSize: 16.sp,
              color: Colors.black,
            ),
            centerTitle: true,
          ),
          body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Expanded(
                  child: ListView.separated(
                    padding: EdgeInsets.symmetric(vertical: 40),
                    itemCount: 2,
                    itemBuilder: (context, index) {
                      return RequestUserWidget();
                    },
                    separatorBuilder: (BuildContext context, int index) =>
                        SizedBox(
                      height: 10.h,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    });
  }
}
