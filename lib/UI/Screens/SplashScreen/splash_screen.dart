import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../Helper/SharedPreferance/shared_preferance.dart';

class SplachScreen extends StatefulWidget {
  @override
  State<SplachScreen> createState() => _SplachScreenState();
}

class _SplachScreenState extends State<SplachScreen> {
  NavigationFunction(context) async {
    await Future.delayed(Duration(milliseconds: 2000));
    if (SpHelper.spHelper.getTokenId() != '') {
    } else {
      //     RouterHelper.routerHelper.routingReplacement(FirstScreen());
    }
  }

  @override
  void initState() {
    super.initState();
    NavigationFunction(context);
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.blueAccent));
    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
            child: Text(
          'Fateen Splash',
          style: TextStyle(fontSize: 24.sp, fontWeight: FontWeight.bold),
        )));
  }
}
