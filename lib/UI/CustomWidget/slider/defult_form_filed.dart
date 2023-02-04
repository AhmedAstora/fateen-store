import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:twnty2/Helper/Providers/app_provider.dart';
import 'package:twnty2/Helper/SharedPreferance/shared_preferance.dart';

class DefaultTextField extends StatelessWidget {
  final bool isPassword;
  final String hintText;
  VoidCallback onClick;
  Function(String?)? onChange;
  TextEditingController? controller;
  Color? fillColor = Colors.black;
  Color? textColor = Colors.black;
  bool? filled = false;
  bool? enable = true;
  bool? autofocus = false;
  double? paddingH;
  double? paddingV;
  double? height;
  IconData? suffix;
  double? fontsize = 14.sp;
  int? maxLines;
  int? maxLength;
  String? Function(String? val)? validationFun;
  TextInputType textInputType;

  DefaultTextField(
      {required this.onClick,
        this.onChange,
        required this.hintText,
        required this.isPassword,
        required this.controller,
        this.fillColor,
        this.textColor,
        this.filled,
        this.suffix,
        this.enable,
        this.autofocus = false,
        this.fontsize,
        this.paddingH = 9,
        this.paddingV = 1,
        this.height = 50,
        this.maxLines = 1,
        this.maxLength,
        this.validationFun,
        this.textInputType = TextInputType.text});

  @override
  Widget build(BuildContext context) {
    return Consumer<AppProvider>(builder: (context, provider, _) {
      return Container(
        // height: height!.h,
        child: TextFormField(
          onTap: onClick,
          onChanged: onChange,
          autofocus: autofocus!,

          // autovalidateMode: AutovalidateMode.onUserInteraction,
          keyboardType: textInputType,
          validator: validationFun,
          maxLength: maxLength,
          style: TextStyle(color: textColor, fontSize: fontsize),
          enabled: enable,
          maxLines: maxLines!,
          controller: controller,
          decoration: InputDecoration(
              filled: filled,
              fillColor: fillColor,
              contentPadding: EdgeInsets.symmetric(
                  horizontal: paddingH!, vertical: paddingV!),
              suffixIcon:Icon(
                  suffix
              ) ,

            border: OutlineInputBorder(),
              focusedErrorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(
                      color: Colors.red.withOpacity(0.6), width: .8.w)),
              errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(
                      color: Colors.red.withOpacity(0.6), width: .8.w)),
              disabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(
                      color: Colors.grey.withOpacity(0.6), width: .8.w)),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(
                      color: Colors.grey.withOpacity(0.6), width: .8.w)),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(
                      color: Colors.grey.withOpacity(0.6), width: .8.w)),
              hintText: hintText,
              hintStyle: TextStyle(
                  fontWeight: FontWeight.w400,
                  color: Colors.grey,
                  fontSize: fontsize)),

          obscureText: isPassword
              ? provider.isHiden
              ? false
              : true
              : isPassword,

          //  onChanged: (value){},
        ),
      );
    });
  }
}
