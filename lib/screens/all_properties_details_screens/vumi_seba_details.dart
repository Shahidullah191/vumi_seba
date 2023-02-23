import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:photo_view/photo_view.dart';
import 'package:vumi_seba/model/vumiseba_info.dart';
import 'package:vumi_seba/widgets/custom_textstyle.dart';

import '../../const/app_color.dart';

class VumiSebaDetails extends StatefulWidget {
  final id;
  VumiSebaDetails({Key? key, required this.id}) : super(key: key);

  @override
  State<VumiSebaDetails> createState() => _VumiSebaDetailsState();
}

class _VumiSebaDetailsState extends State<VumiSebaDetails>
    with TickerProviderStateMixin {
  late final AnimationController _controller =
      AnimationController(vsync: this, duration: Duration(seconds: 2))
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

  translate(var text) {
    text = text.toString();
    if (text == "0") {
      return "০";
    } else if (text == "1") {
      return "১";
    } else if (text == "2") {
      return "২";
    } else if (text == "3") {
      return "৩";
    } else if (text == "4") {
      return "৪";
    } else if (text == "5") {
      return "৫";
    } else if (text == "6") {
      return "৬";
    } else if (text == "7") {
      return "৭";
    } else if (text == "8") {
      return "৮";
    } else if (text == "9") {
      return "৯";
    }
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
        backgroundColor: AppColor.kPurple,
        title: Text(
          vumiSebaInfo.title,
          softWrap: true,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.sp),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(5.w),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(12),
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
                padding: EdgeInsets.all(12),
                width: ScreenUtil().screenWidth,
                color: AppColor.kPurple,
                child: Text(
                  "সেবা প্রদান পদ্ধতি (সংক্ষেপে)",
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
                padding: EdgeInsets.all(12),
                width: ScreenUtil().screenWidth,
                color: AppColor.kWhite,
                child: Text(
                  vumiSebaInfo.sebaProdan,
                  textAlign: TextAlign.justify,
                  style: customTextStyle(14.sp, Colors.black54),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
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
                      "সেবা প্রাপ্তি সময়",
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
                padding: EdgeInsets.all(12),
                width: ScreenUtil().screenWidth,
                color: AppColor.kWhite,
                child: Text(
                  vumiSebaInfo.sebaPraptirSomoy,
                  style: customTextStyle(14.sp, Colors.black54),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
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
                      "প্রয়োজনীয় ফি",
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
                            ? EdgeInsets.symmetric(horizontal: 12, vertical: 10)
                            : point.last == point[i]
                                ? EdgeInsets.only(
                                    left: 12, right: 12, bottom: 12, top: 2)
                                : point.first == point[i]
                                    ? EdgeInsets.only(
                                        left: 12, right: 12, top: 12, bottom: 2)
                                    : EdgeInsets.symmetric(
                                        horizontal: 12, vertical: 1),
                        width: ScreenUtil().screenWidth,
                        color: AppColor.kWhite,
                        child: Stack(
                          children: [
                            Text('${translate(i + 1)}.',
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
                padding: EdgeInsets.all(10),
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
                      "সেবা প্রাপ্তির স্থান",
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
                  padding: EdgeInsets.all(12),
                  width: ScreenUtil().screenWidth,
                  color: AppColor.kWhite,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 3,
                        child: Image.asset(
                          "images/icons/img_view_two.png",
                          height: 90.h,
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
                padding: EdgeInsets.all(10),
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
                      "দায়িত্বপ্রাপ্ত কর্মকর্তা/কর্মচারী",
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
                  padding: EdgeInsets.all(12),
                  width: ScreenUtil().screenWidth,
                  color: AppColor.kWhite,
                  child: Row(
                    children: [
                      Expanded(
                        child: Image.asset(
                          "images/icons/img_view_one.png",
                          height: 90.h,
                        ),
                        flex: 3,
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
                padding: EdgeInsets.all(10),
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
                          "প্রয়োজনীয় কাগজপত্র",
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
                            ? EdgeInsets.symmetric(horizontal: 12, vertical: 10)
                            : point.last == point[i]
                                ? EdgeInsets.only(
                                    left: 12, right: 12, bottom: 12, top: 2)
                                : point.first == point[i]
                                    ? EdgeInsets.only(
                                        left: 12, right: 12, top: 12, bottom: 2)
                                    : EdgeInsets.symmetric(
                                        horizontal: 12, vertical: 1),
                        width: ScreenUtil().screenWidth,
                        color: AppColor.kWhite,
                        child: Stack(
                          children: [
                            Text('${translate(i + 1)}.',
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
                padding: EdgeInsets.all(10),
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
                      "সেবা প্রাপ্তির শর্তাবলি",
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
                padding: EdgeInsets.all(12),
                width: ScreenUtil().screenWidth,
                color: AppColor.kWhite,
                child: Text(
                  vumiSebaInfo.sebaPraptirCondition,
                  style: customTextStyle(14.sp, Colors.black54),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
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
                      "সংশ্লিষ্ট আইন ও বিধি",
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
                            ? EdgeInsets.symmetric(horizontal: 12, vertical: 10)
                            : point.last == point[i]
                                ? EdgeInsets.only(
                                    left: 12, right: 12, bottom: 12, top: 2)
                                : point.first == point[i]
                                    ? EdgeInsets.only(
                                        left: 12, right: 12, top: 12, bottom: 2)
                                    : EdgeInsets.symmetric(
                                        horizontal: 12, vertical: 1),
                        width: ScreenUtil().screenWidth,
                        color: AppColor.kWhite,
                        child: Stack(
                          children: [
                            Text('${translate(i + 1)}.',
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
                padding: EdgeInsets.all(10),
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
                      "সেবা প্রদানে ব্যর্থ হলে প্রতিকারকারী কর্মকর্তা",
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
                padding: EdgeInsets.all(12),
                width: ScreenUtil().screenWidth,
                color: AppColor.kWhite,
                child: Text(
                  vumiSebaInfo.bethoSeba,
                  style: customTextStyle(14.sp, Colors.black54),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
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
                      "পদ্ধতি চিত্র",
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
                  padding: EdgeInsets.all(12),
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
                                      backgroundColor: AppColor.kPurple,
                                      leading: IconButton(
                                          onPressed: () {
                                            Navigator.of(context).pop();
                                          },
                                          icon: Icon(Icons.arrow_back)),
                                      title: Text(
                                        "পদ্ধতি চিত্র",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18.sp),
                                      ),
                                      centerTitle: true,
                                    ),
                                    body: SizedBox(
                                      height: ScreenUtil().screenHeight,
                                      width: ScreenUtil().screenWidth,
                                      child: PhotoView(
                                          backgroundDecoration: BoxDecoration(
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
                                  "ক্লিক করুন",
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
