import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:twnty2/Helper/Providers/app_provider.dart';

import '../../../../Helper/SharedPreferance/shared_preferance.dart';
import '../../../CustomWidget/back_appBar_widget.dart';
import '../../../CustomWidget/custom_text.dart';
import '../../../Utils/constant.dart';

class OrderDetailsScreen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<AppProvider>(builder: (context, provider, _) {
      return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.white,
          leading: BackAppBarWidget(),
          title: CustomText(
            'Order details'.tr(),
            fontSize: 16.sp,
            color: Colors.black,
          ),
          centerTitle: true,
        ),
        body: Container(
            margin: EdgeInsets.only(top: 15.h),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            padding: EdgeInsets.symmetric(horizontal: 0.w),
            decoration: BoxDecoration(
              color: SpHelper.spHelper.getTheme()! ? Colors.white : Colors.grey,
            ),
            child: Theme(
              data: ThemeData(
                  canvasColor: SpHelper.spHelper.getTheme()!
                      ? Colors.white
                      : Colors.grey,
                  colorScheme: Theme.of(context).colorScheme.copyWith(
                        primary: Colors.green,
                        background: Colors.green,
                        secondary: Colors.grey[300],
                      )),
              child: Stepper(
                  controlsBuilder:
                      (BuildContext context, ControlsDetails details) {
                    return provider.buyerWidgets[provider.cureentStepOrder];
                  },
                  onStepTapped: (step) {
                    // provider.cureentStepOrder = step;
                    // provider.notifyListeners();
                  },
                  onStepContinue: () {
                    if (provider.cureentStepOrder != 3) {
                      provider.cureentStepOrder++;
                      provider.notifyListeners();
                    }
                  },
                  onStepCancel: () {
                    if (provider.cureentStepOrder != 0) {
                      provider.cureentStepOrder--;
                      provider.notifyListeners();
                    }
                  },
                  elevation: 0,
                  type: StepperType.horizontal,
                  currentStep: provider.cureentStepOrder,
                  steps: [
                    Step(
                      state: provider.cureentStepOrder > 0
                          ? StepState.complete
                          : StepState.indexed,
                      isActive: provider.cureentStepOrder >= 0,
                      title: CustomText(
                        'request is done',
                        color: Colors.green,
                      ),
                      content: Text(''),
                    ),
                    Step(
                      state: provider.cureentStepOrder > 1
                          ? StepState.complete
                          : StepState.indexed,
                      isActive: provider.cureentStepOrder >= 1,
                      title: CustomText(
                        'Deal completed',
                        color: Colors.green,
                      ),
                      content: Text(''),
                    ),
                    Step(
                      state: provider.cureentStepOrder > 2
                          ? StepState.complete
                          : StepState.indexed,
                      isActive: provider.cureentStepOrder >= 2,
                      title: CustomText(
                        'sent delivered handed',
                        color: Colors.green,
                      ),
                      content: Text(''),
                    ),
                  ]),
            )),
      );
    });
  }
}
