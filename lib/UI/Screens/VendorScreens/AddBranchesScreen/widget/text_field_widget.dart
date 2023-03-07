import 'package:flutter/cupertino.dart';

import '../../../../CustomWidget/slider/defult_form_filed.dart';

class TextFieldWidget extends StatelessWidget {

  TextEditingController? controller;
  Widget? suffix;
  TextFieldWidget({required this.controller,this.suffix,});

  @override
  Widget build(BuildContext context) {
    return DefaultTextField(
      onClick: () {},
      hintText: '',
      isPassword: false,
      controller: controller,
      suffix: suffix,
    );
  }
}
