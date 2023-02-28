import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:vumi_seba/const/app_color.dart';
import 'package:vumi_seba/widgets/custom_container_heading.dart';
import 'package:vumi_seba/widgets/custom_container_properties.dart';
import 'package:vumi_seba/widgets/custom_textstyle.dart';

import 'vumi_seba_details.dart';

class VumiSebaSumuho extends StatelessWidget {
  const VumiSebaSumuho({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.kBg,
      appBar: AppBar(
        backgroundColor: AppColor.kDarkGreen,
        elevation: 0,
        title: Text(
          "ভূমি সেবাসমূহ".tr,
          style: customTextStyle(16.sp, AppColor.kWhite, FontWeight.w700),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(ScreenUtil().screenWidth * .03),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              //নামজারি সংক্রান্ত ও জমাভাগ বিষয়ক...................

              Wrap(
                runSpacing: 12.w,
                alignment: WrapAlignment.spaceBetween,
                children: [
                  customContainerHeading("নামজারি সংক্রান্ত ও জমাভাগ বিষয়ক".tr),
                  customContainerProperties(
                    "নামজারি ও জমাভাগ/জমা একত্রিকরণ".tr,
                    () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const VumiSebaDetails(
                            id: 1,
                          ),
                        ),
                      );
                    },
                  ),
                  customContainerProperties(
                    "নামজারি ও জমাভাগ/জমা একত্রিকরণের আদেশের রিভিউ".tr,
                    () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const VumiSebaDetails(
                            id: 2,
                          ),
                        ),
                      );
                    },
                  ),
                  customContainerProperties(
                    "নামজারি ও জমাভাগ/জমা একত্রিকরণ কেসের ডুপ্লিকেট খতিয়ান প্রদান"
                        .tr,
                    () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const VumiSebaDetails(
                            id: 3,
                          ),
                        ),
                      );
                    },
                  ),
                  customContainerProperties(
                    "নামজারি ও জমাভাগ/জমা একত্রিকরণ/বিবিধ কেসের আদেশের নকল/সার্টিফাইড কপি প্রদান"
                        .tr,
                    () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const VumiSebaDetails(
                            id: 4,
                          ),
                        ),
                      );
                    },
                  ),
                  customContainerProperties(
                    "খতিয়ানের করণিক ভুল সংশোধন".tr,
                    () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const VumiSebaDetails(
                            id: 5,
                          ),
                        ),
                      );
                    },
                  ),
                  customContainerProperties(
                    "দেওয়ানী আদালতের রায়/আদেশ মূলে রেকর্ড সংশোধন".tr,
                    () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const VumiSebaDetails(
                            id: 6,
                          ),
                        ),
                      );
                    },
                  ),

                  /////////////////////ভূমি উন্নয়ন কর ব্যাবস্থাপনা বিষয়ক.///////////////////////
                  customContainerHeading(
                      "ভূমি উন্নয়ন কর ব্যাবস্থাপনা বিষয়ক".tr),
                  customContainerProperties(
                    "ভূমি উন্নয়ন কর নির্ধারণীর আপত্তি নিষ্পত্তি".tr,
                    () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const VumiSebaDetails(
                            id: 7,
                          ),
                        ),
                      );
                    },
                  ),
                  customContainerProperties(
                    "ভূমির ব্যবহার ভিত্তিক ভূমি উন্নয়ন কর নির্ধারণে দাবির আপত্তি আবেদন নিষ্পত্তি"
                        .tr,
                    () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const VumiSebaDetails(
                            id: 8,
                          ),
                        ),
                      );
                    },
                  ),

                  customContainerProperties(
                    "রিটার্ন বাতিল বা রিটার্ন দাখিলের মাধ্যমে ভূমি উন্নয়ন কর হার নির্ধারণ"
                        .tr,
                    () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const VumiSebaDetails(
                            id: 9,
                          ),
                        ),
                      );
                    },
                  ),
                  customContainerProperties(
                    "সিকস্তি জনিত ভূমি উন্নয়ন করের হার পুনঃনির্ধারণেরর আবেদন নিষ্পত্তি"
                        .tr,
                    () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const VumiSebaDetails(
                            id: 10,
                          ),
                        ),
                      );
                    },
                  ),

                  ////////////////খাস জমি বন্দোবস্ত বিষয়ক./////////////////////////////////////////////
                  customContainerHeading("খাস জমি বন্দোবস্ত বিষয়ক".tr),
                  customContainerProperties(
                    "ভূমিহীনদের মাঝে কৃষি খাস জমি বন্দোবস্ত প্রদান".tr,
                    () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const VumiSebaDetails(
                            id: 11,
                          ),
                        ),
                      );
                    },
                  ),
                  customContainerProperties(
                    "বন্দোবস্তকৃত খাস জমির দখল বুঝিয়ে দেয়া".tr,
                    () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const VumiSebaDetails(
                            id: 12,
                          ),
                        ),
                      );
                    },
                  ),
                  customContainerProperties(
                    "অকৃষি খাস জমি বন্দোবস্ত প্রদান".tr,
                    () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const VumiSebaDetails(
                            id: 13,
                          ),
                        ),
                      );
                    },
                  ),

                  ///////////////////////অর্পিত/পরিত্যক্ত সম্পত্তি ব্যাবস্থাপনা বিষয়ক./////////////////////////
                  customContainerHeading(
                      "অর্পিত/পরিত্যক্ত সম্পত্তি ব্যাবস্থাপনা বিষয়ক".tr),
                  customContainerProperties(
                    "অর্পিত সম্পত্তির লিজ নবায়ন".tr,
                    () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const VumiSebaDetails(
                            id: 14,
                          ),
                        ),
                      );
                    },
                  ),
                  customContainerProperties(
                    "অর্পিত সম্পত্তির লিজির নাম পরিবর্তনসহ লিজ নবায়ন".tr,
                    () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const VumiSebaDetails(
                            id: 15,
                          ),
                        ),
                      );
                    },
                  ),

                  customContainerProperties(
                    "পরিত্যক্ত সম্পত্তি (এপি) ইজারা প্রদান".tr,
                    () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const VumiSebaDetails(
                            id: 16,
                          ),
                        ),
                      );
                    },
                  ),
                  customContainerProperties(
                    "পরিত্যক্ত সম্পত্তি (এপি) ইজারা নবায়ন".tr,
                    () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const VumiSebaDetails(
                            id: 17,
                          ),
                        ),
                      );
                    },
                  ),

                  customContainerProperties(
                    "পরিত্যক্ত সম্পত্তির (এপি) ইজারাগ্রহীতার নাম পরিবর্তন".tr,
                    () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const VumiSebaDetails(
                            id: 18,
                          ),
                        ),
                      );
                    },
                  ),

                  /////////////////////////সায়রাত মহাল বিষয়ক.///////////////////////////////
                  customContainerHeading("সায়রাত মহাল বিষয়ক".tr),
                  customContainerProperties(
                    "হাটবাজারের চান্দিনাভিটি একসনা বন্দোবস্ত প্রদান".tr,
                    () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const VumiSebaDetails(
                            id: 19,
                          ),
                        ),
                      );
                    },
                  ),
                  customContainerProperties(
                    "হাটবাজারের চান্দিনাভিটি ব্যবহারের লাইসেন্স নবায়ন".tr,
                    () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const VumiSebaDetails(
                            id: 20,
                          ),
                        ),
                      );
                    },
                  ),
                  customContainerProperties(
                    "হাটবাজারের চান্দিনাভিটি ভূমি ব্যবহারের লাইসেন্সধারীর নাম পরিবর্তনসহ নবায়ন"
                        .tr,
                    () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const VumiSebaDetails(
                            id: 21,
                          ),
                        ),
                      );
                    },
                  ),
                  customContainerProperties(
                    "হাটবাজার ইজারা প্রদান".tr,
                    () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const VumiSebaDetails(
                            id: 22,
                          ),
                        ),
                      );
                    },
                  ),
                  customContainerProperties(
                    "জলমহাল ইজারা প্রদান".tr,
                    () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const VumiSebaDetails(
                            id: 23,
                          ),
                        ),
                      );
                    },
                  ),

                  //////////////////////////////ভূমি বিষয়ক অন্যান্য////////////////////////////////////
                  customContainerHeading("ভূমি বিষয়ক অন্যান্য".tr),
                  customContainerProperties(
                    "আদিবাসিদের জমি হস্তান্তরের অনুমতি প্রদান".tr,
                    () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const VumiSebaDetails(
                            id: 24,
                          ),
                        ),
                      );
                    },
                  ),
                  customContainerProperties(
                    "জমির অখণ্ডতার সনদের জন্য আবেদন নিষ্পত্তিকরণ".tr,
                    () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const VumiSebaDetails(
                            id: 25,
                          ),
                        ),
                      );
                    },
                  ),
                  customContainerProperties(
                    "করাত কল স্থাপনের জন্য জমির মালিকানার প্রত্যয়নপত্র প্রদান"
                        .tr,
                    () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const VumiSebaDetails(
                            id: 26,
                          ),
                        ),
                      );
                    },
                  ),
                  customContainerProperties(
                    "ভূমির শ্রেণি পরিবর্তনের আবেদন নিস্পত্তি".tr,
                    () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const VumiSebaDetails(
                            id: 27,
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
