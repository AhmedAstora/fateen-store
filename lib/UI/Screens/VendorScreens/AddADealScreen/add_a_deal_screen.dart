import 'package:dotted_border/dotted_border.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:twnty2/Helper/Providers/app_provider.dart';

import '../../../../Helper/SharedPreferance/shared_preferance.dart';
import '../../../CustomWidget/custom_bottom.dart';
import '../../../CustomWidget/custom_text.dart';
import '../../../CustomWidget/slider/defult_form_filed.dart';
import '../../../Utils/constant.dart';

class AddADealScreen extends StatelessWidget {
  TextEditingController nameController = TextEditingController();
  TextEditingController transactionDateController = TextEditingController();
  TextEditingController dealController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Consumer<AppProvider>(builder: (context, provider, _) {
      return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
          leading: InkWell(
            onTap: () {
              if (provider.cureentStep == 0) {
                Navigator.pop(context);
              } else {
                provider.cureentStep--;
                provider.notifyListeners();
              }
            },
            child: Icon(
              Icons.arrow_back_ios_rounded,
              color: Colors.black,
              size: 20,
            ),
          ),
          title: CustomText(
            'Add a deal'.tr(),
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
                        primary: Colors.black,
                        background: Colors.black,
                        secondary: Colors.grey[300],
                      )),
              child: Stepper(
                  controlsBuilder:
                      (BuildContext context, ControlsDetails details) {
                    return provider.addServiceWidgets[provider.cureentStep];
                  },
                  onStepTapped: (step) {
                    // provider.cureentStep = step;
                    // provider.notifyListeners();
                  },
                  onStepContinue: () {
                    if (provider.cureentStep != 3) {
                      provider.cureentStep++;
                      provider.notifyListeners();
                    }
                  },
                  onStepCancel: () {
                    if (provider.cureentStep != 0) {
                      provider.cureentStep--;
                      provider.notifyListeners();
                    }
                  },
                  elevation: 0,

                  type: StepperType.horizontal,
                  currentStep: provider.cureentStep,
                  steps: [
                    Step(
                      state: provider.cureentStep > 0
                          ? StepState.complete
                          : StepState.indexed,
                      isActive: provider.cureentStep >= 0,
                      title: Text(''),
                      content: Text(''),
                    ),
                    Step(
                        state: provider.cureentStep > 1
                            ? StepState.complete
                            : StepState.indexed,
                        isActive: provider.cureentStep >= 1,
                        title: Text(''),
                        content: Text('')),
                    Step(
                        state: provider.cureentStep > 2
                            ? StepState.complete
                            : StepState.indexed,
                        isActive: provider.cureentStep >= 2,
                        title: Text(''),
                        content: Text('')),
                  ]),
            )),
      );
    });
  }
}
