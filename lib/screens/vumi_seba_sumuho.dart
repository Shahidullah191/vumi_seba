import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:vumi_seba/const/app_color.dart';
import 'package:vumi_seba/widgets/custom_container_heading.dart';
import 'package:vumi_seba/widgets/custom_container_properties.dart';

import 'all_properties_details_screens/vumi_seba_details.dart';

class VumiSebaSumuho extends StatelessWidget {
  const VumiSebaSumuho({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.kPurple,
        elevation: 0,
        title: Text(
          "ভূমি সেবাসমূহ",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(ScreenUtil().screenWidth * .03),
          child: Column(
            children: [
              //নামজারি সংক্রান্ত ও জমাভাগ বিষয়ক...................
              customContainerHeading("নামজারি সংক্রান্ত ও জমাভাগ বিষয়ক"),
              SizedBox(
                height: 12.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  customContainerProperties(
                    "নামজারি ও জমাভাগ/জমা একত্রিকরণ",
                    () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => VumiSebaDetails(
                            id: 1,
                          ),
                        ),
                      );
                    },
                    FontAwesomeIcons.fileLines,
                  ),
                  customContainerProperties(
                    "নামজারি ও জমাভাগ/জমা একত্রিকরণের আদেশের রিভিউ",
                    () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => VumiSebaDetails(
                            id: 2,
                          ),
                        ),
                      );
                    },
                    FontAwesomeIcons.fileLines,
                  ),
                ],
              ),
              SizedBox(
                height: 12.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  customContainerProperties(
                      "নামজারি ও জমাভাগ/জমা একত্রিকরণ  কেসের ডুপ্লিকেট খতিয়ান প্রদান",
                      () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => VumiSebaDetails(
                          id: 3,
                        ),
                      ),
                    );
                  }, FontAwesomeIcons.fileLines),
                  customContainerProperties(
                      "নামজারি ও জমাভাগ/জমা একত্রিকরণ/বিবিধ কেসের আদেশের নকল/সার্টিফাইড কপি প্রদান",
                      () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => VumiSebaDetails(
                          id: 4,
                        ),
                      ),
                    );
                  }, FontAwesomeIcons.filePen)
                ],
              ),
              SizedBox(
                height: 12.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  customContainerProperties("খতিয়ানের করণিক ভুল সংশোধন", () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => VumiSebaDetails(
                          id: 5,
                        ),
                      ),
                    );
                  }, FontAwesomeIcons.fileCircleXmark),
                  customContainerProperties(
                      "দেওয়ানী আদালতের রায়/আদেশ মূলে রেকর্ড সংশোধন", () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => VumiSebaDetails(
                          id: 6,
                        ),
                      ),
                    );
                  }, FontAwesomeIcons.fileCircleCheck)
                ],
              ),

              //ভূমি উন্নয়ন কর ব্যাবস্থাপনা বিষয়ক.........................
              SizedBox(
                height: 12.h,
              ),
              customContainerHeading("ভূমি উন্নয়ন কর ব্যাবস্থাপনা বিষয়ক"),
              SizedBox(
                height: 12.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  customContainerProperties(
                      "ভূমি উন্নয়ন কর নির্ধারণীর আপত্তি নিষ্পত্তি", () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => VumiSebaDetails(
                          id: 7,
                        ),
                      ),
                    );
                  }, FontAwesomeIcons.fileLines),
                  customContainerProperties(
                      "ভূমির ব্যবহার ভিত্তিক ভূমি উন্নয়ন কর নির্ধারণে দাবির আপত্তি আবেদন নিষ্পত্তি",
                      () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => VumiSebaDetails(
                          id: 8,
                        ),
                      ),
                    );
                  }, FontAwesomeIcons.fileLines)
                ],
              ),
              SizedBox(
                height: 12.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  customContainerProperties(
                      "রিটার্ন বাতিল বা রিটার্ন দাখিলের মাধ্যমে ভূমি উন্নয়ন কর হার নির্ধারণ",
                      () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => VumiSebaDetails(
                          id: 9,
                        ),
                      ),
                    );
                  }, FontAwesomeIcons.fileLines),
                  customContainerProperties(
                      "সিকস্তি জনিত ভূমি উন্নয়ন করের হার পুনঃনির্ধারণেরর আবেদন নিষ্পত্তি",
                      () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => VumiSebaDetails(
                          id: 10,
                        ),
                      ),
                    );
                  }, FontAwesomeIcons.filePen)
                ],
              ),

              //খাস জমি বন্দোবস্ত বিষয়ক........................
              SizedBox(
                height: 12.h,
              ),
              customContainerHeading("খাস জমি বন্দোবস্ত বিষয়ক"),
              SizedBox(
                height: 12.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  customContainerProperties(
                      "ভূমিহীনদের মাঝে কৃষি খাস জমি বন্দোবস্ত প্রদান", () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => VumiSebaDetails(
                          id: 11,
                        ),
                      ),
                    );
                  }, FontAwesomeIcons.fileLines),
                  customContainerProperties(
                      "বন্দোবস্তকৃত খাস জমির দখল বুঝিয়ে দেয়া", () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => VumiSebaDetails(
                          id: 12,
                        ),
                      ),
                    );
                  }, FontAwesomeIcons.fileLines)
                ],
              ),
              SizedBox(
                height: 12.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  customContainerProperties("অকৃষি খাস জমি বন্দোবস্ত প্রদান",
                      () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => VumiSebaDetails(
                          id: 13,
                        ),
                      ),
                    );
                  }, FontAwesomeIcons.fileLines),
                ],
              ),

              //অর্পিত/পরিত্যক্ত সম্পত্তি ব্যাবস্থাপনা বিষয়ক.......................
              SizedBox(
                height: 12.h,
              ),
              customContainerHeading(
                  "অর্পিত/পরিত্যক্ত সম্পত্তি ব্যাবস্থাপনা বিষয়ক"),
              SizedBox(
                height: 12.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  customContainerProperties("অর্পিত সম্পত্তির লিজ নবায়ন", () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => VumiSebaDetails(
                          id: 14,
                        ),
                      ),
                    );
                  }, FontAwesomeIcons.fileLines),
                  customContainerProperties(
                      "অর্পিত সম্পত্তির লিজির নাম পরিবর্তনসহ লিজ নবায়ন", () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => VumiSebaDetails(
                          id: 15,
                        ),
                      ),
                    );
                  }, FontAwesomeIcons.fileLines)
                ],
              ),
              SizedBox(
                height: 12.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  customContainerProperties(
                      "পরিত্যক্ত সম্পত্তি (এপি) ইজারা প্রদান", () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => VumiSebaDetails(
                          id: 16,
                        ),
                      ),
                    );
                  }, FontAwesomeIcons.fileLines),
                  customContainerProperties(
                      "পরিত্যক্ত সম্পত্তি (এপি) ইজারা নবায়ন", () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => VumiSebaDetails(
                          id: 17,
                        ),
                      ),
                    );
                  }, FontAwesomeIcons.fileLines)
                ],
              ),
              SizedBox(
                height: 12.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  customContainerProperties(
                      "পরিত্যক্ত সম্পত্তির (এপি) ইজারাগ্রহীতার নাম পরিবর্তন",
                      () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => VumiSebaDetails(
                          id: 18,
                        ),
                      ),
                    );
                  }, FontAwesomeIcons.fileLines),
                ],
              ),

              //সায়রাত মহাল বিষয়ক......................
              SizedBox(
                height: 12.h,
              ),
              customContainerHeading("সায়রাত মহাল বিষয়ক"),
              SizedBox(
                height: 12.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  customContainerProperties(
                      "হাটবাজারের চান্দিনাভিটি একসনা বন্দোবস্ত প্রদান", () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => VumiSebaDetails(
                          id: 19,
                        ),
                      ),
                    );
                  }, FontAwesomeIcons.fileLines),
                  customContainerProperties(
                      "হাটবাজারের চান্দিনাভিটি ব্যবহারের লাইসেন্স নবায়ন", () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => VumiSebaDetails(
                          id: 20,
                        ),
                      ),
                    );
                  }, FontAwesomeIcons.fileLines)
                ],
              ),
              SizedBox(
                height: 12.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  customContainerProperties(
                      "হাটবাজারের চান্দিনাভিটি ভূমি ব্যবহারের লাইসেন্সধারীর নাম পরিবর্তনসহ নবায়ন",
                      () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => VumiSebaDetails(
                          id: 21,
                        ),
                      ),
                    );
                  }, FontAwesomeIcons.fileLines),
                  customContainerProperties("হাটবাজার ইজারা প্রদান", () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => VumiSebaDetails(
                          id: 22,
                        ),
                      ),
                    );
                  }, FontAwesomeIcons.fileLines)
                ],
              ),
              SizedBox(
                height: 12.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  customContainerProperties("জলমহাল ইজারা প্রদান", () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => VumiSebaDetails(
                          id: 23,
                        ),
                      ),
                    );
                  }, FontAwesomeIcons.fileLines),
                ],
              ),

              //ভূমি বিষয়ক অন্যান্য......................
              SizedBox(
                height: 12.h,
              ),
              customContainerHeading("ভূমি বিষয়ক অন্যান্য"),
              SizedBox(
                height: 12.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  customContainerProperties(
                      "আদিবাসিদের জমি হস্তান্তরের অনুমতি প্রদান", () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => VumiSebaDetails(
                          id: 24,
                        ),
                      ),
                    );
                  }, FontAwesomeIcons.fileLines),
                  customContainerProperties(
                      "জমির অখণ্ডতার সনদের জন্য আবেদন নিষ্পত্তিকরণ", () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => VumiSebaDetails(
                          id: 25,
                        ),
                      ),
                    );
                  }, FontAwesomeIcons.fileLines)
                ],
              ),
              SizedBox(
                height: 12.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  customContainerProperties(
                      "করাত কল স্থাপনের জন্য জমির মালিকানার প্রত্যয়নপত্র প্রদান",
                      () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => VumiSebaDetails(
                          id: 26,
                        ),
                      ),
                    );
                  }, FontAwesomeIcons.fileLines),
                  customContainerProperties(
                      "ভূমির শ্রেণি পরিবর্তনের আবেদন নিস্পত্তি", () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => VumiSebaDetails(
                          id: 27,
                        ),
                      ),
                    );
                  }, FontAwesomeIcons.fileLines)
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
