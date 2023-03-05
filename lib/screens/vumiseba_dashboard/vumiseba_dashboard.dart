import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:vumi_seba/screens/all_properties_details_screens/vumi_seba_sumuho.dart';
import 'package:vumi_seba/widgets/custom_dashboard_card.dart';
import 'package:vumi_seba/widgets/custom_textstyle.dart';

import '../../const/app_color.dart';
import '../../widgets/custom_drawer.dart';
import '../others_application/others_application.dart';
import '../vumisebai_kormokorta/vumisebai_kormokorta.dart';

class VumiSebaDashboard extends StatefulWidget {
  const VumiSebaDashboard({Key? key}) : super(key: key);

  @override
  State<VumiSebaDashboard> createState() => _VumiSebaDashboardState();
}

class _VumiSebaDashboardState extends State<VumiSebaDashboard> {
  final GlobalKey<ScaffoldState> scaffoldkey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const CustomDrawer(),
      key: scaffoldkey,
      backgroundColor: AppColor.kBg,
      appBar: AppBar(
        backgroundColor: AppColor.kWhite,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            scaffoldkey.currentState?.openDrawer();
          },
          icon: FaIcon(
            FontAwesomeIcons.barsStaggered,
            color: AppColor.kDarkGreen,
          ),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "স্বাগতম".tr,
              style: customTextStyle(14.sp, Colors.black, FontWeight.w500),
            ),
            Text(
              "Vumi Seba".tr,
              style: customTextStyle(16.sp, Colors.black, FontWeight.w600),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 10.w),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: AppColor.kDarkGreen),
              onPressed: () {},
              child: Text('রেজিস্টার'.tr,
                  style:
                      customTextStyle(15.sp, AppColor.kWhite, FontWeight.w500)),
            ),
          )
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(14.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: EdgeInsets.all(15.w),
              color: AppColor.kDarkGreen,
              child: Text("সেবা গ্রহণ করতে রেজিস্টার করুন".tr,
                  style:
                      customTextStyle(15.sp, AppColor.kWhite, FontWeight.w500)),
            ),
            SizedBox(
              height: 14.h,
            ),
            Wrap(
              runSpacing: 16.w,
              alignment: WrapAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const VumiSebaSumuho(),
                    ));
                  },
                  child: customDashboardCard(
                      "ভূমি সেবা".tr, "images/icons/icon_landservice.png"),
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const VumiSebaiKormokorta(),
                    ));
                  },
                  child: customDashboardCard("ভূমি কর্মকর্তা".tr,
                      "images/icons/icon_landemployee.png"),
                ),
                InkWell(
                  onTap: () {},
                  child: customDashboardCard(
                      "দাখিলা".tr, "images/icons/icon_dakhila.png"),
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const OthersApplication(),
                    ));
                  },
                  child: customDashboardCard(
                      "অন্যান্য অ্যাপ".tr, "images/icons/icon_otherapp.png"),
                ),
                InkWell(
                  onTap: () {},
                  child: customDashboardCard(
                      "ক্যালকুলেটর".tr, "images/icons/icon_calculator.png"),
                ),
                InkWell(
                    onTap: () {},
                    child: customDashboardCard(
                        "অন্যান্য সেবা".tr, "images/icons/icon_other.png")),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
