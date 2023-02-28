import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../const/app_color.dart';
import '../../widgets/custom_textstyle.dart';

class VumiSebaiKormokorta extends StatefulWidget {
  const VumiSebaiKormokorta({Key? key}) : super(key: key);

  @override
  State<VumiSebaiKormokorta> createState() => _VumiSebaiKormokortaState();
}

class _VumiSebaiKormokortaState extends State<VumiSebaiKormokorta> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.kDarkGreen,
        elevation: 0,
        title: Text(
          "ভুমি সেবায় নিয়োজিত কর্মকর্তা",
          style: customTextStyle(16.sp, AppColor.kWhite),
        ),
        centerTitle: true,
      ),
    );
  }
}
