import 'package:flutter/material.dart';
import 'package:twnty2/UI/Utils/constant.dart';



class LoaderWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: CircularProgressIndicator(
        strokeWidth: 2,
        color: mainAppColor,
      ),
    );
  }
}
