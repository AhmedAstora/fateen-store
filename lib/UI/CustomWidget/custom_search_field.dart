import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:twnty2/Helper/Providers/app_provider.dart';
import 'package:twnty2/Helper/SharedPreferance/shared_preferance.dart';

class CustomSearchField extends StatelessWidget {
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
  Widget? suffix;
  Widget? prefix;
  double? fontsize = 14.sp;
  int? maxLines;
  int? maxLength;
  String? Function(String? val)? validationFun;
  TextInputType textInputType;

  CustomSearchField(
      {required this.onClick,
        this.onChange,
        required this.hintText,
        required this.isPassword,
        required this.controller,
        this.fillColor,
        this.textColor,
        this.filled,
        this.suffix,
        this.prefix,
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
              filled: true,
              fillColor: fillColor,
              contentPadding: EdgeInsets.symmetric(
                  horizontal: paddingH!, vertical: paddingV!),

              suffixIcon: Padding(
                padding: const EdgeInsetsDirectional.only(end: 12.0),
                child: suffix,
              ),
              prefixIcon: Padding(
                padding: const EdgeInsetsDirectional.only(start: 12.0),
                child: Icon(Icons.search,size: 30,color: Colors.black,),),
              suffixIconConstraints:
              BoxConstraints(maxWidth: 30.w, maxHeight: 25.h),
              border: OutlineInputBorder(),
              focusedErrorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(
                      color: Colors.red.withOpacity(0.6), width: .1.w)),
              errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(
                      color: Colors.red.withOpacity(0.6), width: .1.w)),
              disabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(
                      color: Colors.grey.withOpacity(0.6), width: .1.w)),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                  borderSide: BorderSide(
                      color: Colors.grey.withOpacity(0.6), width: .1.w)),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
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
