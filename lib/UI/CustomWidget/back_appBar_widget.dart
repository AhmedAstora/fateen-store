import 'package:flutter/material.dart';

class BackAppBarWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return InkWell(
      onTap: () {
        Navigator.pop(context);
      },
      child: Icon(
        Icons.arrow_back_ios_rounded,
        size: 18,
        color: Colors.black,
      ),
    );
  }
}