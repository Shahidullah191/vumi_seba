import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:photo_view/photo_view.dart';
import 'package:vumi_seba/languages/languages.dart';
import 'package:vumi_seba/model/vumiseba_info.dart';
import 'package:vumi_seba/widgets/custom_textstyle.dart';

import '../../const/app_color.dart';

class VumiSebaDetails extends StatefulWidget {
  final int id;
  const VumiSebaDetails({Key? key, required this.id}) : super(key: key);

  @override
  State<VumiSebaDetails> createState() => _VumiSebaDetailsState();
}

class _VumiSebaDetailsState extends State<VumiSebaDetails>
    with TickerProviderStateMixin {
  late final AnimationController _controller =
      AnimationController(vsync: this, duration: const Duration(seconds: 2))
        ..repeat(reverse: true);

  late final Animation<double> _animation =
      CurvedAnimation(parent: _controller, curve: Curves.easeIn);

//this portion for order list
  List<String> point = [];
  splitList(String s) {
    point = [];
    s.split('<b>').forEach((element) {
      point.add(element);
    });
    return point;
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final infoList = VumiSebaInfo.generatedVumiSebaInfoList();

    late VumiSebaInfo vumiSebaInfo;

    for (int i = 0; i < infoList.length; i++) {
      if (infoList[i].id == widget.id) {
        vumiSebaInfo = infoList[i];
      }
    }

    return Scaffold(
      backgroundColor: AppColor.kBg,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColor.kDarkGreen,
        title: Text(
          vumiSebaInfo.title,
          softWrap: true,
          style: customTextStyle(16.sp, AppColor.kWhite, FontWeight.w700),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(5.w),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(12.w),
                //height: 30.h,
                width: ScreenUtil().screenWidth,
                color: Colors.teal,
                child: Text(
                  vumiSebaInfo.title,
                  textAlign: TextAlign.center,
                  style:
                      customTextStyle(18.sp, AppColor.kWhite, FontWeight.w600),
                ),
              ),
              SizedBox(
                height: 3.h,
              ),
              Container(
                padding: EdgeInsets.all(12.w),
                width: ScreenUtil().screenWidth,
                color: AppColor.kPurple,
                child: Text(
                  "সেবা প্রদান পদ্ধতি (সংক্ষেপে)".tr,
                  style:
                      customTextStyle(14.sp, AppColor.kWhite, FontWeight.w600),
                ),
              ),
              Container(
                height: 3.h,
                color: AppColor.kDeepGray,
                width: ScreenUtil().screenWidth,
              ),
              Container(
                padding: EdgeInsets.all(12.w),
                width: ScreenUtil().screenWidth,
                color: AppColor.kWhite,
                child: Text(
                  vumiSebaInfo.sebaProdan,
                  textAlign: TextAlign.justify,
                  style: customTextStyle(14.sp, Colors.black54),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10.w),
                width: ScreenUtil().screenWidth,
                color: AppColor.kGreen,
                child: Row(
                  children: [
                    Image.asset(
                      "images/icons/icon_time.png",
                      height: 23.h,
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Text(
                      "সেবা প্রাপ্তি সময়".tr,
                      style: customTextStyle(
                          14.sp, AppColor.kWhite, FontWeight.w600),
                    ),
                  ],
                ),
              ),
              Container(
                height: 3.h,
                color: AppColor.kDeepGray,
                width: ScreenUtil().screenWidth,
              ),
              Container(
                padding: EdgeInsets.all(12.w),
                width: ScreenUtil().screenWidth,
                color: AppColor.kWhite,
                child: Text(
                  vumiSebaInfo.sebaPraptirSomoy,
                  style: customTextStyle(14.sp, Colors.black54),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10.w),
                width: ScreenUtil().screenWidth,
                color: AppColor.kPurple,
                child: Row(
                  children: [
                    Image.asset(
                      "images/icons/icon_fee.png",
                      height: 23.h,
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Text(
                      "প্রয়োজনীয় ফি".tr,
                      style: customTextStyle(
                          14.sp, AppColor.kWhite, FontWeight.w600),
                    ),
                  ],
                ),
              ),
              Container(
                color: AppColor.kWhite,
                child: Wrap(
                  children: [
                    Container(
                      height: 3.h,
                      color: AppColor.kDeepGray,
                      width: ScreenUtil().screenWidth,
                    ),
                    for (int i = 0;
                        i < splitList(vumiSebaInfo.projonniyoFee).length;
                        i++)
                      Container(
                        padding: point.length == 1
                            ? EdgeInsets.symmetric(
                                horizontal: 12.w, vertical: 10.h)
                            : point.last == point[i]
                                ? EdgeInsets.only(
                                    left: 12.w,
                                    right: 12.w,
                                    bottom: 12.h,
                                    top: 2.h)
                                : point.first == point[i]
                                    ? EdgeInsets.only(
                                        left: 12.w,
                                        right: 12.w,
                                        top: 12.h,
                                        bottom: 2.h)
                                    : EdgeInsets.symmetric(
                                        horizontal: 12.w, vertical: 1.h),
                        width: ScreenUtil().screenWidth,
                        color: AppColor.kWhite,
                        child: Stack(
                          children: [
                            Text('${Languages.translate(i + 1)}.',
                                style: customTextStyle(14.sp, Colors.black54)),
                            Container(
                              padding: EdgeInsets.only(left: 20.w),
                              child: Text(
                                point[i],
                                style: customTextStyle(14.sp, Colors.black54),
                              ),
                            ),
                          ],
                        ),
                      ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(10.w),
                width: ScreenUtil().screenWidth,
                color: AppColor.kGreen,
                child: Row(
                  children: [
                    Image.asset(
                      "images/icons/icon_time.png",
                      height: 23.h,
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Text(
                      "সেবা প্রাপ্তির স্থান".tr,
                      style: customTextStyle(
                          14.sp, AppColor.kWhite, FontWeight.w600),
                    ),
                  ],
                ),
              ),
              Container(
                height: 3.h,
                color: AppColor.kDeepGray,
                width: ScreenUtil().screenWidth,
              ),
              Container(
                  padding: EdgeInsets.all(10.w),
                  width: ScreenUtil().screenWidth,
                  color: AppColor.kWhite,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 3,
                        child: Image.asset(
                          "images/icons/img_view_two.png",
                          height: 60.h,
                        ),
                      ),
                      SizedBox(
                        width: 20.w,
                      ),
                      Expanded(
                        flex: 7,
                        child: Text(
                          vumiSebaInfo.sebaPraptirIstan,
                          style: customTextStyle(14.sp, Colors.black54),
                        ),
                      ),
                    ],
                  )),
              Container(
                padding: EdgeInsets.all(10.w),
                width: ScreenUtil().screenWidth,
                color: AppColor.kPurple,
                child: Row(
                  children: [
                    Image.asset(
                      "images/icons/icon_dc.png",
                      height: 23.h,
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Text(
                      "দায়িত্বপ্রাপ্ত কর্মকর্তা/কর্মচারী".tr,
                      style: customTextStyle(
                          14.sp, AppColor.kWhite, FontWeight.w600),
                    ),
                  ],
                ),
              ),
              Container(
                height: 3.h,
                color: AppColor.kDeepGray,
                width: ScreenUtil().screenWidth,
              ),
              Container(
                  padding: EdgeInsets.all(10.w),
                  width: ScreenUtil().screenWidth,
                  color: AppColor.kWhite,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 3,
                        child: Image.asset(
                          "images/icons/img_view_one.png",
                          height: 60.h,
                        ),
                      ),
                      SizedBox(
                        width: 20.w,
                      ),
                      Expanded(
                        flex: 7,
                        child: Text(
                          vumiSebaInfo.daiettoPrapto,
                          style: customTextStyle(14.sp, Colors.black54),
                        ),
                      ),
                    ],
                  )),
              Container(
                padding: EdgeInsets.all(10.w),
                width: ScreenUtil().screenWidth,
                color: AppColor.kGreen,
                child: Row(
                  children: [
                    Image.asset(
                      "images/icons/icon_document.png",
                      height: 23.h,
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Column(
                      children: [
                        Text(
                          "প্রয়োজনীয় কাগজপত্র".tr,
                          style: customTextStyle(
                              14.sp, AppColor.kWhite, FontWeight.w600),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                color: AppColor.kWhite,
                child: Wrap(
                  children: [
                    Container(
                      height: 3.h,
                      color: AppColor.kDeepGray,
                      width: ScreenUtil().screenWidth,
                    ),
                    for (int i = 0;
                        i < splitList(vumiSebaInfo.projonniyoKagoj).length;
                        i++)
                      Container(
                        padding: point.length == 1
                            ? EdgeInsets.symmetric(
                                horizontal: 12.w, vertical: 10.h)
                            : point.last == point[i]
                                ? EdgeInsets.only(
                                    left: 12.w,
                                    right: 12.w,
                                    bottom: 12.h,
                                    top: 2.h)
                                : point.first == point[i]
                                    ? EdgeInsets.only(
                                        left: 12.w,
                                        right: 12.w,
                                        top: 12.h,
                                        bottom: 2.h)
                                    : EdgeInsets.symmetric(
                                        horizontal: 12.w, vertical: 1.h),
                        width: ScreenUtil().screenWidth,
                        color: AppColor.kWhite,
                        child: Stack(
                          children: [
                            Text('${Languages.translate(i + 1)}.',
                                style: customTextStyle(14.sp, Colors.black54)),
                            Container(
                              padding: EdgeInsets.only(left: 20.w),
                              child: Text(
                                point[i],
                                style: customTextStyle(14.sp, Colors.black54),
                              ),
                            ),
                          ],
                        ),
                      ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(10.w),
                width: ScreenUtil().screenWidth,
                color: AppColor.kPurple,
                child: Row(
                  children: [
                    Image.asset(
                      "images/icons/icon_condition.png",
                      height: 23.h,
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Text(
                      "সেবা প্রাপ্তির শর্তাবলি".tr,
                      style: customTextStyle(
                          14.sp, AppColor.kWhite, FontWeight.w600),
                    ),
                  ],
                ),
              ),
              Container(
                height: 3.h,
                color: AppColor.kDeepGray,
                width: ScreenUtil().screenWidth,
              ),
              Container(
                padding: EdgeInsets.all(12.w),
                width: ScreenUtil().screenWidth,
                color: AppColor.kWhite,
                child: Text(
                  vumiSebaInfo.sebaPraptirCondition,
                  style: customTextStyle(14.sp, Colors.black54),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10.w),
                width: ScreenUtil().screenWidth,
                color: AppColor.kGreen,
                child: Row(
                  children: [
                    Image.asset(
                      "images/icons/icon_law.png",
                      height: 23.h,
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Text(
                      "সংশ্লিষ্ট আইন ও বিধি".tr,
                      style: customTextStyle(
                          14.sp, AppColor.kWhite, FontWeight.w600),
                    ),
                  ],
                ),
              ),
              Container(
                color: AppColor.kWhite,
                child: Wrap(
                  children: [
                    Container(
                      height: 3.h,
                      color: AppColor.kDeepGray,
                      width: ScreenUtil().screenWidth,
                    ),
                    for (int i = 0;
                        i < splitList(vumiSebaInfo.lawBidhi).length;
                        i++)
                      Container(
                        padding: point.length == 1
                            ? EdgeInsets.symmetric(
                                horizontal: 12.w, vertical: 10.h)
                            : point.last == point[i]
                                ? EdgeInsets.only(
                                    left: 12.w,
                                    right: 12.w,
                                    bottom: 12.h,
                                    top: 2.h)
                                : point.first == point[i]
                                    ? EdgeInsets.only(
                                        left: 12.w,
                                        right: 12.w,
                                        top: 12.h,
                                        bottom: 2.h)
                                    : EdgeInsets.symmetric(
                                        horizontal: 12.w, vertical: 1.h),
                        width: ScreenUtil().screenWidth,
                        color: AppColor.kWhite,
                        child: Stack(
                          children: [
                            Text('${Languages.translate(i + 1)}.',
                                style: customTextStyle(14.sp, Colors.black54)),
                            Container(
                              padding: EdgeInsets.only(left: 20.w),
                              child: Text(
                                point[i],
                                style: customTextStyle(14.sp, Colors.black54),
                              ),
                            ),
                          ],
                        ),
                      ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(10.w),
                width: ScreenUtil().screenWidth,
                color: AppColor.kPurple,
                child: Row(
                  children: [
                    Image.asset(
                      "images/icons/icon_dc.png",
                      height: 23.h,
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    SizedBox(
                      width: ScreenUtil().screenWidth * 0.8,
                      child: Text(
                        "সেবা প্রদানে ব্যর্থ হলে প্রতিকারকারী কর্মকর্তা".tr,
                        style: customTextStyle(
                            14.sp, AppColor.kWhite, FontWeight.w600),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 3.h,
                color: AppColor.kDeepGray,
                width: ScreenUtil().screenWidth,
              ),
              Container(
                padding: EdgeInsets.all(12.w),
                width: ScreenUtil().screenWidth,
                color: AppColor.kWhite,
                child: Text(
                  vumiSebaInfo.bethoSeba,
                  style: customTextStyle(14.sp, Colors.black54),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10.w),
                width: ScreenUtil().screenWidth,
                color: AppColor.kGreen,
                child: Row(
                  children: [
                    Image.asset(
                      "images/icons/icon_method.png",
                      height: 23.h,
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Text(
                      "পদ্ধতি চিত্র".tr,
                      style: customTextStyle(
                          14.sp, AppColor.kWhite, FontWeight.w600),
                    ),
                  ],
                ),
              ),
              Container(
                height: 3.h,
                color: AppColor.kDeepGray,
                width: ScreenUtil().screenWidth,
              ),
              Container(
                  padding: EdgeInsets.all(12.w),
                  width: ScreenUtil().screenWidth,
                  color: AppColor.kWhite,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image.asset(
                            "images/icons/img_view_three.png",
                            height: 100.h,
                          ),
                          InkWell(
                            onTap: () {
                              showGeneralDialog(
                                context: context,
                                pageBuilder:
                                    (context, animation, secondaryAnimation) {
                                  return Scaffold(
                                    appBar: AppBar(
                                      elevation: 0,
                                      backgroundColor: AppColor.kDarkGreen,
                                      leading: IconButton(
                                          onPressed: () {
                                            Navigator.of(context).pop();
                                          },
                                          icon: const Icon(Icons.arrow_back)),
                                      title: Text(
                                        "পদ্ধতি চিত্র".tr,
                                        style: customTextStyle(16.sp,
                                            AppColor.kWhite, FontWeight.w700),
                                      ),
                                      centerTitle: true,
                                    ),
                                    body: SizedBox(
                                      height: ScreenUtil().screenHeight,
                                      width: ScreenUtil().screenWidth,
                                      child: PhotoView(
                                          backgroundDecoration:
                                              const BoxDecoration(
                                            color: AppColor.kBg,
                                          ),
                                          imageProvider: AssetImage(
                                              vumiSebaInfo.processMap)),
                                    ),
                                  );
                                },
                              );
                            },
                            child: FadeTransition(
                              opacity: _animation,
                              child: Container(
                                padding: EdgeInsets.only(
                                    left: 12.w,
                                    right: 12.w,
                                    top: 6.h,
                                    bottom: 6.h),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12.r),
                                  border: Border.all(color: Colors.grey),
                                ),
                                child: Text(
                                  "ক্লিক করুন".tr,
                                  style: customTextStyle(
                                      14.sp, AppColor.kPurple, FontWeight.w600),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      Text(
                        "পদ্ধতি চিত্র (Process Map)",
                        style: customTextStyle(14.sp, Colors.black54),
                      ),
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
