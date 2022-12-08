import 'package:flutter/cupertino.dart';

class IndicatorMain extends StatelessWidget {
  final int index;

  IndicatorMain(this.index);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        DotsMain(index == 0 ? 0xFF33907C : 0xFF85BCB0,10,10),
        DotsMain(index == 1 ? 0xFF33907C : 0xFF85BCB0,10,10),
        DotsMain(index == 2 ? 0xFF33907C : 0xFF85BCB0,10,10),
      ],
    );
  }
  Widget DotsMain(int Colordot,double width,double height) {
    return Container(
      margin: EdgeInsets.all(4),
      height: height,
      width: width,
      decoration: BoxDecoration(color: Color(Colordot), shape: BoxShape.circle),
    );
  }
}