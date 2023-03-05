import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:vumi_seba/screens/vumisebai_kormokorta/vumisebai_kormokorta.dart';

import '../../const/app_color.dart';
import '../../widgets/custom_textstyle.dart';

class VumiSebaiKormokortaDetails extends StatefulWidget {

  final void user;

   VumiSebaiKormokortaDetails({Key? key, required this.user}) : super(key: key);

  @override
  State<VumiSebaiKormokortaDetails> createState() =>
      _VumiSebaiKormokortaDetailsState();
}

class _VumiSebaiKormokortaDetailsState
    extends State<VumiSebaiKormokortaDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.kBg,
      appBar: PreferredSize(
        preferredSize: Size.square(
          126.h,
        ),
        child: Container(
            padding: EdgeInsets.only(top: 25.h),
            alignment: Alignment.center,
            height: 126.h,
            decoration: BoxDecoration(
                color: AppColor.kDarkGreen,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(15.r),
                    bottomRight: Radius.circular(15.r))),
            child: Row(
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: const Icon(
                      Icons.arrow_back,
                      color: AppColor.kWhite,
                    )),
                SizedBox(
                  width: 10.w,
                ),
                Text(
                  "ভুমি সেবায় নিয়োজিত কর্মকর্তা".tr,
                  style:
                      customTextStyle(20.sp, AppColor.kWhite, FontWeight.w500),
                ),
              ],
            )),
      ),
      body: Container(
        child: Column(
          children: [
            Center(
              child: OutlinedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text(
                  'পুনরায় খুঁজুন'.tr,
                  style: customTextStyle(
                      15.sp, AppColor.kDarkGreen, FontWeight.w400),
                ),
              ),
            ),


            ListView.builder(
              itemCount: VumiSebaiKormokortaState.users.length,
              itemBuilder: (context, index) {
                final user = VumiSebaiKormokortaState.users[index];
                return ListTile(

                  title: Text(user['name']),
                  subtitle: Text(user['designation']),

                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
