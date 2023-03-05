import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:vumi_seba/const/app_color.dart';
import 'package:vumi_seba/widgets/custom_textstyle.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        backgroundColor: AppColor.kBg,
        width: 306.w,
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 120.h,
                  color: AppColor.kDarkGreen,
                  child: Center(
                    child: ListTile(
                      leading: CircleAvatar(
                        radius: 30.r,
                      ),
                      title: Text(
                        "User name".tr,
                        style: customTextStyle(
                            20.sp, AppColor.kWhite, FontWeight.w600),
                      ),
                      subtitle: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            height: 30.h,
                            padding: EdgeInsets.symmetric(
                                horizontal: 14.w, vertical: 2.h),
                            decoration: BoxDecoration(
                              color: AppColor.kOlive,
                              borderRadius: BorderRadius.circular(8.r),
                            ),
                            child: Center(
                                child: Text(
                              "My Profile".tr,
                              style: customTextStyle(12.sp, AppColor.kWhite),
                            )),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                    right: 0,
                    child: IconButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        icon: const FaIcon(
                          FontAwesomeIcons.xmark,
                          color: AppColor.kWhite,
                        )))
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            buildRowWithSizedBox(FontAwesomeIcons.house, "Home".tr),
            const Divider(
              color: AppColor.kDarkGreen,
            ),
            buildRowWithSizedBox(
              FontAwesomeIcons.solidCircleUser,
              "About Us".tr,
            ),
            const Divider(
              color: AppColor.kDarkGreen,
            ),
            buildRowWithSizedBox(
                FontAwesomeIcons.solidHandshake, "Consultant".tr),
            const Divider(
              color: AppColor.kDarkGreen,
            ),
            buildRowWithSizedBox(FontAwesomeIcons.solidBell, "Notification".tr),
            const Divider(
              color: AppColor.kDarkGreen,
            ),
            buildRowWithSizedBox(
                FontAwesomeIcons.solidCircleQuestion, "FAQ".tr),
            const Divider(
              color: AppColor.kDarkGreen,
            ),
            buildRowWithSizedBox(
                FontAwesomeIcons.paperclip, "Privacy & Policy".tr),
            const Divider(
              color: AppColor.kDarkGreen,
            ),
            buildRowWithSizedBox(
                FontAwesomeIcons.buffer, "Terms & Conditions".tr),
            const Divider(
              color: AppColor.kDarkGreen,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 12.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        OutlinedButton(
                          onPressed: () {},
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const Icon(
                                FontAwesomeIcons.arrowRightFromBracket,
                                color: AppColor.kDarkGreen,
                              ),
                              SizedBox(
                                width: 8.w,
                              ),
                              Text(
                                "Log Out".tr,
                                style: customTextStyle(14.sp,
                                    AppColor.kDarkGreen, FontWeight.w600),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  buildRowWithSizedBox(IconData icon, String title) {
    return SizedBox(
        height: 40.h,
        child: Padding(
          padding: EdgeInsets.only(left: 30.w),
          child: Row(
            children: [
              FaIcon(
                icon,
                color: AppColor.kDarkGreen,
              ),
              SizedBox(
                width: 12.w,
              ),
              Text(
                title,
                style: customTextStyle(16.sp, Colors.black, FontWeight.w400),
              ),
            ],
          ),
        ));
  }
}
