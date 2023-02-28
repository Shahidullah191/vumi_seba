import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:vumi_seba/widgets/custom_other_application_card.dart';
import 'package:vumi_seba/widgets/custom_textstyle.dart';

import '../../const/app_color.dart';

class OthersApplication extends StatelessWidget {
  const OthersApplication({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.kBg,
      appBar: AppBar(
        backgroundColor: AppColor.kDarkGreen,
        elevation: 0,
        title: Text(
          "অন্যান্য এপ্লিকেশন".tr,
          style: customTextStyle(16.sp, AppColor.kWhite),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(14.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Wrap(
                runSpacing: 16.w,
                alignment: WrapAlignment.spaceBetween,
                children: [
                  customOtherApplicationCard("ভূমি উন্নয়ন কর".tr,
                      "images/icons/idtax_logo.png", "com.mysoftheaven.ldtax"),
                  customOtherApplicationCard("ই-নামজারি".tr,
                      "images/icons/namjari_logo.png", "com.bat.mutation_app"),
                  customOtherApplicationCard(
                      "ই-বুক".tr,
                      "images/icons/ebook_logo.png",
                      "com.sislbd.e_bookminland"),
                  customOtherApplicationCard(
                      "ই-খতিয়ান".tr,
                      "images/icons/ekhatian_logo.png",
                      "com.softbdltd.eKhatian"),
                  customOtherApplicationCard(
                      "উত্তরাধিকার".tr,
                      "images/icons/uttaradhikar_logo.png",
                      "com.landcalculation"),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
