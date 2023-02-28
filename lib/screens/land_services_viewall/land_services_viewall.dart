import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:vumi_seba/screens/others_application/others_application.dart';
import 'package:vumi_seba/widgets/custom_expansion_card.dart';

import '../../const/app_color.dart';
import '../../widgets/custom_textstyle.dart';
import '../all_properties_details_screens/vumi_seba_details.dart';
import '../all_properties_details_screens/vumi_seba_sumuho.dart';

class LandServicesViewAll extends StatefulWidget {
  const LandServicesViewAll({Key? key}) : super(key: key);

  @override
  State<LandServicesViewAll> createState() => _LandServicesViewAllState();
}

class _LandServicesViewAllState extends State<LandServicesViewAll> {
  bool value = false;
  bool value1 = false;
  bool value2 = false;
  bool value3 = false;
  bool value4 = false;
  bool value5 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(.99),
      appBar: AppBar(
        backgroundColor: AppColor.kDarkGreen,
        elevation: 0,
        title: Text(
          "Land Services",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(16.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "ভূমি সেবাসমূহ".tr,
                    style: customTextStyle(
                        16.sp, AppColor.kBlack, FontWeight.w500),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const VumiSebaSumuho(),
                      ));
                    },
                    child: Row(
                      children: [
                        Text(
                          "সব দেখুন".tr,
                          style: customTextStyle(
                              13.sp, AppColor.kDarkGreen, FontWeight.w500),
                        ),
                        Icon(
                          Icons.arrow_forward,
                          color: AppColor.kDarkGreen,
                          size: 12.w,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15.h,
              ),
              ExpansionTile(
                backgroundColor: Colors.grey.shade200,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.r),
                ),
                collapsedIconColor: AppColor.kDarkGreen,
                iconColor: AppColor.kDarkGreen,
                onExpansionChanged: (v) {
                  setState(() {
                    value = v;
                  });
                },
                trailing: value == false
                    ? Icon(
                        Icons.keyboard_arrow_down,
                        size: 35.w,
                      )
                    : Icon(Icons.keyboard_arrow_up, size: 35.w),
                expandedCrossAxisAlignment: CrossAxisAlignment.start,
                tilePadding: EdgeInsets.zero,
                title: Text(
                  "নামজারি সংক্রান্ত ও জমাভাগ বিষয়ক".tr,
                  style:
                      customTextStyle(15.sp, AppColor.kBlack, FontWeight.w500),
                ),
                children: [
                  InkWell(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const VumiSebaDetails(
                              id: 1,
                            ),
                          ),
                        );
                      },
                      child: customExpansionCard(
                          "নামজারি ও জমাভাগ/জমা একত্রিকরণ".tr)),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const VumiSebaDetails(
                            id: 2,
                          ),
                        ),
                      );
                    },
                    child: customExpansionCard(
                        "নামজারি ও জমাভাগ/জমা একত্রিকরণের আদেশের রিভিউ".tr),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const VumiSebaDetails(
                            id: 3,
                          ),
                        ),
                      );
                    },
                    child: customExpansionCard(
                        "নামজারি ও জমাভাগ/জমা একত্রিকরণ কেসের ডুপ্লিকেট খতিয়ান প্রদান"
                            .tr),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const VumiSebaDetails(
                            id: 4,
                          ),
                        ),
                      );
                    },
                    child: customExpansionCard(
                        "নামজারি ও জমাভাগ/জমা একত্রিকরণ/বিবিধ কেসের আদেশের নকল/সার্টিফাইড কপি প্রদান"
                            .tr),
                  ),
                  InkWell(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const VumiSebaDetails(
                              id: 5,
                            ),
                          ),
                        );
                      },
                      child:
                          customExpansionCard("খতিয়ানের করণিক ভুল সংশোধন".tr)),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const VumiSebaDetails(
                            id: 6,
                          ),
                        ),
                      );
                    },
                    child: customExpansionCard(
                        "দেওয়ানী আদালতের রায়/আদেশ মূলে রেকর্ড সংশোধন".tr),
                  ),
                  SizedBox(
                    height: 10.h,
                  )
                ],
              ),
              ExpansionTile(
                backgroundColor: Colors.grey.shade200,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.r),
                ),
                collapsedIconColor: AppColor.kDarkGreen,
                iconColor: AppColor.kDarkGreen,
                onExpansionChanged: (v) {
                  setState(() {
                    value1 = v;
                  });
                },
                trailing: value1 == false
                    ? Icon(
                        Icons.keyboard_arrow_down,
                        size: 35.w,
                      )
                    : Icon(Icons.keyboard_arrow_up, size: 35.w),
                expandedCrossAxisAlignment: CrossAxisAlignment.start,
                tilePadding: EdgeInsets.zero,
                title: Text(
                  "ভূমি উন্নয়ন কর ব্যাবস্থাপনা বিষয়ক".tr,
                  style:
                      customTextStyle(15.sp, AppColor.kBlack, FontWeight.w500),
                ),
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const VumiSebaDetails(
                            id: 7,
                          ),
                        ),
                      );
                    },
                    child: customExpansionCard(
                        "ভূমি উন্নয়ন কর নির্ধারণীর আপত্তি নিষ্পত্তি".tr),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const VumiSebaDetails(
                            id: 8,
                          ),
                        ),
                      );
                    },
                    child: customExpansionCard(
                        "ভূমির ব্যবহার ভিত্তিক ভূমি উন্নয়ন কর নির্ধারণে দাবির আপত্তি আবেদন নিষ্পত্তি"
                            .tr),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const VumiSebaDetails(
                            id: 9,
                          ),
                        ),
                      );
                    },
                    child: customExpansionCard(
                        "রিটার্ন বাতিল বা রিটার্ন দাখিলের মাধ্যমে ভূমি উন্নয়ন কর হার নির্ধারণ"
                            .tr),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const VumiSebaDetails(
                            id: 10,
                          ),
                        ),
                      );
                    },
                    child: customExpansionCard(
                        "সিকস্তি জনিত ভূমি উন্নয়ন করের হার পুনঃনির্ধারণেরর আবেদন নিষ্পত্তি"
                            .tr),
                  ),
                  SizedBox(
                    height: 10.h,
                  )
                ],
              ),
              ExpansionTile(
                backgroundColor: Colors.grey.shade200,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.r),
                ),
                collapsedIconColor: AppColor.kDarkGreen,
                iconColor: AppColor.kDarkGreen,
                onExpansionChanged: (v) {
                  setState(() {
                    value2 = v;
                  });
                },
                trailing: value2 == false
                    ? Icon(
                        Icons.keyboard_arrow_down,
                        size: 35.w,
                      )
                    : Icon(Icons.keyboard_arrow_up, size: 35.w),
                expandedCrossAxisAlignment: CrossAxisAlignment.start,
                tilePadding: EdgeInsets.zero,
                title: Text(
                  "খাস জমি বন্দোবস্ত বিষয়ক".tr,
                  style:
                      customTextStyle(15.sp, AppColor.kBlack, FontWeight.w500),
                ),
                children: [
                  InkWell(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const VumiSebaDetails(
                              id: 11,
                            ),
                          ),
                        );
                      },
                      child: customExpansionCard(
                          "ভূমিহীনদের মাঝে কৃষি খাস জমি বন্দোবস্ত প্রদান".tr)),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const VumiSebaDetails(
                            id: 12,
                          ),
                        ),
                      );
                    },
                    child: customExpansionCard(
                        "বন্দোবস্তকৃত খাস জমির দখল বুঝিয়ে দেয়া".tr),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const VumiSebaDetails(
                            id: 13,
                          ),
                        ),
                      );
                    },
                    child: customExpansionCard(
                        "অকৃষি খাস জমি বন্দোবস্ত প্রদান".tr),
                  ),
                  SizedBox(
                    height: 10.h,
                  )
                ],
              ),
              ExpansionTile(
                backgroundColor: Colors.grey.shade200,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.r),
                ),
                collapsedIconColor: AppColor.kDarkGreen,
                iconColor: AppColor.kDarkGreen,
                onExpansionChanged: (v) {
                  setState(() {
                    value3 = v;
                  });
                },
                trailing: value3 == false
                    ? Icon(
                        Icons.keyboard_arrow_down,
                        size: 35.w,
                      )
                    : Icon(Icons.keyboard_arrow_up, size: 35.w),
                expandedCrossAxisAlignment: CrossAxisAlignment.start,
                tilePadding: EdgeInsets.zero,
                title: Text(
                  "অর্পিত/পরিত্যক্ত সম্পত্তি ব্যাবস্থাপনা বিষয়ক".tr,
                  style:
                      customTextStyle(15.sp, AppColor.kBlack, FontWeight.w500),
                ),
                children: [
                  InkWell(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const VumiSebaDetails(
                              id: 14,
                            ),
                          ),
                        );
                      },
                      child:
                          customExpansionCard("অর্পিত সম্পত্তির লিজ নবায়ন".tr)),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const VumiSebaDetails(
                            id: 15,
                          ),
                        ),
                      );
                    },
                    child: customExpansionCard(
                        "অর্পিত সম্পত্তির লিজির নাম পরিবর্তনসহ লিজ নবায়ন".tr),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const VumiSebaDetails(
                            id: 16,
                          ),
                        ),
                      );
                    },
                    child: customExpansionCard(
                        "পরিত্যক্ত সম্পত্তি (এপি) ইজারা প্রদান".tr),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const VumiSebaDetails(
                            id: 17,
                          ),
                        ),
                      );
                    },
                    child: customExpansionCard(
                        "পরিত্যক্ত সম্পত্তি (এপি) ইজারা নবায়ন".tr),
                  ),
                  InkWell(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const VumiSebaDetails(
                              id: 18,
                            ),
                          ),
                        );
                      },
                      child: customExpansionCard(
                          "পরিত্যক্ত সম্পত্তির (এপি) ইজারাগ্রহীতার নাম পরিবর্তন"
                              .tr)),
                  SizedBox(
                    height: 10.h,
                  )
                ],
              ),
              ExpansionTile(
                backgroundColor: Colors.grey.shade200,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.r),
                ),
                collapsedIconColor: AppColor.kDarkGreen,
                iconColor: AppColor.kDarkGreen,
                onExpansionChanged: (v) {
                  setState(() {
                    value4 = v;
                  });
                },
                trailing: value4 == false
                    ? Icon(
                        Icons.keyboard_arrow_down,
                        size: 35.w,
                      )
                    : Icon(Icons.keyboard_arrow_up, size: 35.w),
                expandedCrossAxisAlignment: CrossAxisAlignment.start,
                tilePadding: EdgeInsets.zero,
                title: Text(
                  "সায়রাত মহাল বিষয়ক".tr,
                  style:
                      customTextStyle(15.sp, AppColor.kBlack, FontWeight.w500),
                ),
                children: [
                  InkWell(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const VumiSebaDetails(
                              id: 19,
                            ),
                          ),
                        );
                      },
                      child: customExpansionCard(
                          "হাটবাজারের চান্দিনাভিটি একসনা বন্দোবস্ত প্রদান".tr)),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const VumiSebaDetails(
                            id: 20,
                          ),
                        ),
                      );
                    },
                    child: customExpansionCard(
                        "হাটবাজারের চান্দিনাভিটি ব্যবহারের লাইসেন্স নবায়ন".tr),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const VumiSebaDetails(
                            id: 21,
                          ),
                        ),
                      );
                    },
                    child: customExpansionCard(
                        "হাটবাজারের চান্দিনাভিটি ভূমি ব্যবহারের লাইসেন্সধারীর নাম পরিবর্তনসহ নবায়ন"
                            .tr),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const VumiSebaDetails(
                            id: 22,
                          ),
                        ),
                      );
                    },
                    child: customExpansionCard("হাটবাজার ইজারা প্রদান".tr),
                  ),
                  InkWell(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const VumiSebaDetails(
                              id: 23,
                            ),
                          ),
                        );
                      },
                      child: customExpansionCard("জলমহাল ইজারা প্রদান".tr)),
                  SizedBox(
                    height: 10.h,
                  )
                ],
              ),
              ExpansionTile(
                backgroundColor: Colors.grey.shade200,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.r),
                ),
                collapsedIconColor: AppColor.kDarkGreen,
                iconColor: AppColor.kDarkGreen,
                onExpansionChanged: (v) {
                  setState(() {
                    value5 = v;
                  });
                },
                trailing: value5 == false
                    ? Icon(
                        Icons.keyboard_arrow_down,
                        size: 35.w,
                      )
                    : Icon(Icons.keyboard_arrow_up, size: 35.w),
                expandedCrossAxisAlignment: CrossAxisAlignment.start,
                tilePadding: EdgeInsets.zero,
                title: Text(
                  "ভূমি বিষয়ক অন্যান্য".tr,
                  style:
                      customTextStyle(15.sp, AppColor.kBlack, FontWeight.w500),
                ),
                children: [
                  InkWell(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const VumiSebaDetails(
                              id: 24,
                            ),
                          ),
                        );
                      },
                      child: customExpansionCard(
                          "আদিবাসিদের জমি হস্তান্তরের অনুমতি প্রদান".tr)),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const VumiSebaDetails(
                            id: 25,
                          ),
                        ),
                      );
                    },
                    child: customExpansionCard(
                        "জমির অখণ্ডতার সনদের জন্য আবেদন নিষ্পত্তিকরণ".tr),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const VumiSebaDetails(
                            id: 26,
                          ),
                        ),
                      );
                    },
                    child: customExpansionCard(
                        "করাত কল স্থাপনের জন্য জমির মালিকানার প্রত্যয়নপত্র প্রদান"
                            .tr),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const VumiSebaDetails(
                            id: 27,
                          ),
                        ),
                      );
                    },
                    child: customExpansionCard(
                        "ভূমির শ্রেণি পরিবর্তনের আবেদন নিস্পত্তি".tr),
                  ),
                  SizedBox(
                    height: 10.h,
                  )
                ],
              ),
              SizedBox(
                height: 40.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  OutlinedButton(
                    onPressed: () => Get.updateLocale(const Locale('bn', 'BD')),
                    child: const Text('বাংলা'),
                  ),
                  SizedBox(
                    width: 40.w,
                  ),
                  OutlinedButton(
                    onPressed: () => Get.updateLocale(const Locale('en', 'US')),
                    child: const Text('English'),
                  ),
                ],
              ),
              Center(
                child: OutlinedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => OthersApplication(),
                    ));
                  },
                  child: const Text('Other Application'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
