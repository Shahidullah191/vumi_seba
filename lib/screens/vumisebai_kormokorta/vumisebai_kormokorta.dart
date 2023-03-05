import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:vumi_seba/screens/vumisebai_kormokorta/vumisebai_kormokorta_details_page.dart';

import '../../const/app_color.dart';
import '../../widgets/custom_textstyle.dart';

class VumiSebaiKormokorta extends StatefulWidget {
  const VumiSebaiKormokorta({Key? key}) : super(key: key);

  @override
  State<VumiSebaiKormokorta> createState() => _VumiSebaiKormokortaState();
}

class _VumiSebaiKormokortaState extends State<VumiSebaiKormokorta> {
  final List<String> items1 = [
    'Item1',
    'Item2',
    'Item3',
  ];
  final List<String> items2 = [
    'Item1',
    'Item2',
    'Item3',
  ];
  final List<String> items3 = [
    'Item1',
    'Item2',
    'Item3',
  ];
  String? selectedValue1;
  String? selectedValue2;
  String? selectedValue3;

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
      body: Column(
        children: [
          SizedBox(
            height: 14.h,
          ),
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                margin: EdgeInsets.all(15.w),
                padding: EdgeInsets.all(15.w),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    border: Border.all(
                      color: AppColor.kDarkGreen,
                      width: 1.w,
                    )),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ///////////বিভাগ////////////////////////////////
                    SizedBox(
                      height: 25.h,
                    ),
                    Text(
                      "বিভাগ".tr,
                      style: customTextStyle(
                          18.sp, AppColor.kDarkGreen, FontWeight.w600),
                    ),
                    Divider(
                      thickness: 2.h,
                      color: AppColor.kDarkGreen,
                    ),
                    DropdownButtonHideUnderline(
                      child: DropdownButton2(
                        hint: Padding(
                          padding: EdgeInsets.only(left: 12.w),
                          child: Text(
                            "বিভাগ".tr,
                            style: TextStyle(
                              fontSize: 14,
                              color: Theme.of(context).hintColor,
                            ),
                          ),
                        ),
                        items: items1
                            .map((item) => DropdownMenuItem<String>(
                                  value: item,
                                  child: Padding(
                                    padding: EdgeInsets.only(left: 12.w),
                                    child: Text(
                                      item,
                                      style: const TextStyle(
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                ))
                            .toList(),
                        value: selectedValue1,
                        onChanged: (value) {
                          setState(() {
                            selectedValue1 = value as String;
                            selectedValue2 = null;
                            selectedValue3 = null;
                          });
                        },
                        buttonStyleData: ButtonStyleData(
                          height: 45.h,
                          width: ScreenUtil().screenWidth,
                          decoration: BoxDecoration(
                            color: AppColor.kWhite,
                            borderRadius: BorderRadius.circular(5),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey
                                    .withOpacity(0.5), //color of shadow
                                spreadRadius: 2, //spread radius
                                blurRadius: 4, // blur radius
                                offset: const Offset(
                                    0, 1), // changes position of shadow
                              ),
                              //you can set more BoxShadow() here
                            ],
                          ),
                        ),
                        dropdownStyleData: DropdownStyleData(
                          width: ScreenUtil().screenWidth * 0.8,
                          padding: null,
                        ),
                        // menuItemStyleData: MenuItemStyleData(
                        //   height: 40,
                        //   padding: EdgeInsets.only(left: 14, right: 14),
                        // ),
                      ),
                    ),

                    SizedBox(
                      height: 15.h,
                    ),

                    ///////////জেলা ////////////////////////////////

                    Text(
                      "জেলা".tr,
                      style: customTextStyle(
                          18.sp, AppColor.kDarkGreen, FontWeight.w600),
                    ),
                    Divider(
                      thickness: 2.h,
                      color: AppColor.kDarkGreen,
                    ),
                    if (selectedValue1 != null)
                      DropdownButtonHideUnderline(
                        child: DropdownButton2(
                          hint: Padding(
                            padding: EdgeInsets.only(left: 12.w),
                            child: Text(
                              "জেলা".tr,
                              style: TextStyle(
                                fontSize: 14,
                                color: Theme.of(context).hintColor,
                              ),
                            ),
                          ),
                          items: items2
                              .map((item) => DropdownMenuItem<String>(
                                    value: item,
                                    child: Padding(
                                      padding: EdgeInsets.only(left: 12.w),
                                      child: Text(
                                        item,
                                        style: const TextStyle(
                                          fontSize: 14,
                                        ),
                                      ),
                                    ),
                                  ))
                              .toList(),
                          value: selectedValue2,
                          onChanged: (value) {
                            setState(() {
                              selectedValue2 = value as String;
                              selectedValue3 = null;
                            });
                          },
                          buttonStyleData: ButtonStyleData(
                            height: 45.h,
                            width: ScreenUtil().screenWidth,
                            decoration: BoxDecoration(
                              color: AppColor.kWhite,
                              borderRadius: BorderRadius.circular(5),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey
                                      .withOpacity(0.5), //color of shadow
                                  spreadRadius: 2, //spread radius
                                  blurRadius: 4, // blur radius
                                  offset: const Offset(
                                      0, 1), // changes position of shadow
                                ),
                                //you can set more BoxShadow() here
                              ],
                            ),
                          ),
                          dropdownStyleData: DropdownStyleData(
                            width: ScreenUtil().screenWidth * 0.8,
                            padding: null,
                          ),
                          // menuItemStyleData: MenuItemStyleData(
                          //   height: 40,
                          //   padding: EdgeInsets.only(left: 14, right: 14),
                          // ),
                        ),
                      ),

                    SizedBox(
                      height: 15.h,
                    ),
                    ///////////উপজেলা////////////////////////////////

                    Text(
                      "উপজেলা".tr,
                      style: customTextStyle(
                          18.sp, AppColor.kDarkGreen, FontWeight.w600),
                    ),
                    Divider(
                      thickness: 2.h,
                      color: AppColor.kDarkGreen,
                    ),
                    if (selectedValue2 != null)
                      DropdownButtonHideUnderline(
                        child: DropdownButton2(
                          hint: Padding(
                            padding: EdgeInsets.only(left: 12.w),
                            child: Text(
                              "উপজেলা".tr,
                              style: TextStyle(
                                fontSize: 14,
                                color: Theme.of(context).hintColor,
                              ),
                            ),
                          ),
                          items: items3
                              .map((item) => DropdownMenuItem<String>(
                                    value: item,
                                    child: Padding(
                                      padding: EdgeInsets.only(left: 12.w),
                                      child: Text(
                                        item,
                                        style: const TextStyle(
                                          fontSize: 14,
                                        ),
                                      ),
                                    ),
                                  ))
                              .toList(),
                          value: selectedValue3,
                          onChanged: (value) {
                            setState(() {
                              selectedValue3 = value as String;
                            });
                          },
                          buttonStyleData: ButtonStyleData(
                            height: 45.h,
                            width: ScreenUtil().screenWidth,
                            decoration: BoxDecoration(
                              color: AppColor.kWhite,
                              borderRadius: BorderRadius.circular(5),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey
                                      .withOpacity(0.5), //color of shadow
                                  spreadRadius: 2, //spread radius
                                  blurRadius: 4, // blur radius
                                  offset: const Offset(
                                      0, 1), // changes position of shadow
                                ),
                                //you can set more BoxShadow() here
                              ],
                            ),
                          ),
                          dropdownStyleData: DropdownStyleData(
                            width: ScreenUtil().screenWidth * 0.8,
                            padding: null,
                          ),
                          // menuItemStyleData: MenuItemStyleData(
                          //   height: 40,
                          //   padding: EdgeInsets.only(left: 14, right: 14),
                          // ),
                        ),
                      ),

                    SizedBox(
                      height: 20.h,
                    ),
                    if (selectedValue3 != null)
                      Center(
                        child: OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            backgroundColor: AppColor.kDarkGreen,
                          ),
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) =>
                                  const VumiSebaiKormokortaDetails(),
                            ));
                          },
                          child: Text(
                            'খুঁজুন'.tr,
                            style: customTextStyle(
                                17.sp, AppColor.kWhite, FontWeight.w400),
                          ),
                        ),
                      ),
                  ],
                ),
              ),
              Positioned(
                top: 0,
                child: Container(
                  height: 45.h,
                  width: 212.w,
                  decoration: BoxDecoration(
                      color: AppColor.kDarkGreen,
                      borderRadius: BorderRadius.circular(8.r)),
                  child: Center(
                      child: Text(
                    "ভূমি কর্মকর্তা".tr,
                    style: customTextStyle(
                        15.sp, AppColor.kWhite, FontWeight.w400),
                  )),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
