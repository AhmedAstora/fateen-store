import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:twnty2/UI/Screens/ChooseLanguageScreen/choose_language_screen.dart';

import '../../../Helper/Router/router.dart';
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
      RouterHelper.routerHelper.routingReplacement(ChooseLanguageScreen());
    }
  }

  @override
  void initState() {
    super.initState();
    NavigationFunction(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        extendBody: true,
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            Image.asset(
              'assets/images/splash.png',
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              fit: BoxFit.fill,
            ),
            Center(
                child: Image.asset(
              'assets/images/logo.png',
              width: 90.w,
              height: 130.h,
            )),
          ],
        ));
  }
}
