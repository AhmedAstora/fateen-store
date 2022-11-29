import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:twnty2/Helper/Providers/app_provider.dart';
import 'package:twnty2/Helper/SharedPreferance/shared_preferance.dart';
import 'package:twnty2/UI/CustomWidget/custom_image_network.dart';
import 'package:twnty2/UI/Utils/constant.dart';

class SlideItem extends StatelessWidget {
  final int index;

  SlideItem(this.index);

  @override
  Widget build(BuildContext context) {
    return Consumer<AppProvider>(builder: (context, provider, _) {
      return SingleChildScrollView(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                height: 252.h,
                child: Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                          top: index == 1
                              ? 4.5.h
                              : index == 2
                                  ? 1.5.h
                                  : 0,
                          right: context.locale.languageCode == "en"
                              ? index == 2
                                  ? 61.w
                                  : 0
                              : index == 0
                                  ? 61.w
                                  : 0,
                          left: context.locale.languageCode == "en"
                              ? index == 0
                                  ? 61.w
                                  : 0
                              : index == 2
                                  ? 61.w
                                  : 0),
                      child: Image.asset(
                        context.locale.languageCode == "ar"
                            ? provider.onboardingAr![index].image!
                            : provider.onboardingAr![index].image!,
                        height: index == 1 ? 253.h : 245.0.h,
                        width: MediaQuery.of(context).size.width,
                        fit: BoxFit.fill,
                      ),
                      // child: CachedNetworkImage(
                      //   imageUrl: baseUrl + provider.onboarding![index].image!,
                      //   height: 225.h,
                      //   width: 303.w,
                      //   placeholder: (context, url) => Container(
                      //     width: 30.w,
                      //       height: 30.h,
                      //       child: Center(child: CircularProgressIndicator())),
                      //   errorWidget: (context, url, error) => Icon(Icons.error),
                      // ),
                    ),
                    Center(
                      child: Container(
                        child: CustomImageNetwork(
                          image: '',
                          width: double.infinity.h,
                          height: 250.h,
                          fit: BoxFit.fill,
                          radius: 500,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 40.h,
              ),
              Text(
                "Title",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18.sp,
                  color: mainAppColor,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Container(
                width: 280.w,
                child: Text(
                  'Description ',
                  maxLines: 3,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 13.sp,
                    color: Colors.grey[600],
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}
