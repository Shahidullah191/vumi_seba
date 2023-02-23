import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../const/app_color.dart';
import 'custom_textstyle.dart';

Widget customExpansionCard(String title) {
  return Card(
    child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 10),
            child: SizedBox(
              width: ScreenUtil().screenWidth * 0.75,
              child: Text(
                title,
                style: customTextStyle(15.sp, AppColor.kBlack, FontWeight.w500),
              ),
            ),
          ),
          Icon(
            Icons.arrow_forward_ios,
            size: 18.w,
            color: AppColor.kDarkGreen,
          ),
        ],
      ),
    ),
  );
}
