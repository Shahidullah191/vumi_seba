import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:vumi_seba/widgets/custom_textstyle.dart';

import '../const/app_color.dart';

Widget customOtherApplicationCard(String title, image, packageName) {
  return InkWell(
    onTap: () async {
      String pName = packageName; // Replace with your app's package name
      String url = 'https://play.google.com/store/apps/details?id=$pName';
      if (await canLaunchUrl(Uri.parse(url))) {
        await launchUrl(Uri.parse(url), mode: LaunchMode.externalApplication);
      } else {
        throw 'Could not launch $url';
      }
    },
    child: Stack(
      children: [
        Card(
          child: SizedBox(
              height: 136.h,
              width: 150.w,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    image,
                    width: 56.w,
                    height: 56.h,
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  Text(
                    textAlign: TextAlign.center,
                    title,
                    style:
                        customTextStyle(16.sp, Colors.black, FontWeight.w600),
                  ),
                ],
              )),
        ),
        Positioned(
            right: 3.5.w,
            bottom: 3.5.h,
            child: Center(
              child: Container(
                height: 25.h,
                width: 28.w,
                decoration: BoxDecoration(
                    color: AppColor.kDarkGreen,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25.r),
                        bottomLeft: Radius.circular(0.r),
                        bottomRight: Radius.circular(5.r))),
                child: Icon(
                  Icons.arrow_forward,
                  size: 15.w,
                  color: AppColor.kWhite,
                ),
              ),
            )),
      ],
    ),
  );
}
