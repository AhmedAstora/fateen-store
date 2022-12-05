import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:twnty2/Helper/Providers/app_provider.dart';
import 'package:twnty2/Helper/Providers/auth_provider.dart';
import 'package:twnty2/Helper/SharedPreferance/shared_preferance.dart';
import 'package:twnty2/UI/CustomWidget/custom_image_network.dart';
import 'package:twnty2/UI/Utils/constant.dart';

class SlideItem extends StatelessWidget {
  final int index;

  SlideItem(this.index);

  @override
  Widget build(BuildContext context) {
    return Consumer<AuthProvider>(builder: (context, provider, _) {
      return SingleChildScrollView(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 50.h,
              ),
              Container(
                height: 200.h,
                child: Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 35.w),
                      child: Center(
                        child: Image.asset(
                          context.locale.languageCode == "ar"
                              ? provider.slideList_welcome[index].imageUrl
                              : provider.slideList_welcome[index].imageUrl,
                          height: index == 1 ? 253.h : 245.0.h,
                          width: MediaQuery.of(context).size.width,
                          fit: BoxFit.fill,
                        ),
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
                height: 100.h,
              ),
              Text(
                "${provider.slideList_welcome[index].title}",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18.sp,
                  color: greyColor,
                  fontWeight: FontWeight.w700,
                ),
                maxLines: 1,
              ),
              SizedBox(
                height: 25.h,
              ),
              Container(
                width: 280.w,
                child: Text(
                  '${provider.slideList_welcome[index].text}',
                  maxLines: 3,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14.sp,
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
