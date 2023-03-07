import 'dart:convert';

import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:vumi_seba/screens/vumisebai_kormokorta/vumisebai_kormokorta_details_page.dart';

import '../../const/app_color.dart';
import '../../custom_http/custom_http.dart';
import '../../widgets/custom_textstyle.dart';

class VumiSebaiKormokorta extends StatefulWidget {
  const VumiSebaiKormokorta({Key? key}) : super(key: key);

  @override
  State<VumiSebaiKormokorta> createState() => VumiSebaiKormokortaState();
}

class VumiSebaiKormokortaState extends State<VumiSebaiKormokorta> {
  List? _divisions;
  String? _selectedDivision;
  Future<String?> getToken() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString('token');
  }
  //////////////////////////////////////////////

  List? _districts;
  String? _selectedDistrict;

  /////////////////////////////////////////

  List? _upazilas;
  String? _selectedUpazila;
  late bool bn;
  ///////////////////////////////////////////////
  Future<void> saveToken(String token) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('token', token);
  }

  Future<void> getTokenAndSave() async {
    try {
      print("start");
      String token =
          await CustomHttpRequest.getToken('mysoft', '#mysoft@ldtax#');

      await saveToken(token);
    } catch (e) {
      // handle error
      print(e.toString());
    }
  }

  @override
  Future<void> didChangeDependencies() async {
    EasyLoading.show(status: 'Loading....');
    Future.delayed(Duration.zero);
    await getTokenAndSave();
    await _getDivisions();

    super.didChangeDependencies();
  }

  @override
  void initState() {
    Get.locale!.languageCode == 'bn' ? bn = true : bn = false;
    super.initState();
  }

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
                        items: _divisions
                            ?.map((item) => DropdownMenuItem<String>(
                                  value: bn ? item['name_bn'] : item['name'],
                                  child: Padding(
                                    padding: EdgeInsets.only(left: 12.w),
                                    child: Text(
                                      bn ? item['name_bn'] : item['name'],
                                      style: const TextStyle(
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                ))
                            .toList(),
                        value: _selectedDivision,
                        onChanged: (value) {
                          setState(() {
                            _selectedDivision = value as String;
                            _getDistricts();
                            _selectedDistrict = null;
                            _selectedUpazila = null;
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
                    if (_selectedDivision != null)
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
                          items: _districts
                              ?.map((item) => DropdownMenuItem<String>(
                                    value: bn ? item['name_bn'] : item['name'],
                                    child: Padding(
                                      padding: EdgeInsets.only(left: 12.w),
                                      child: Text(
                                        bn ? item['name_bn'] : item['name'],
                                        style: const TextStyle(
                                          fontSize: 14,
                                        ),
                                      ),
                                    ),
                                  ))
                              .toList(),
                          value: _selectedDistrict,
                          onChanged: (value) {
                            setState(() {
                              _selectedDistrict = value as String;
                              _getUpazilas();
                              _selectedUpazila = null;
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
                    if (_selectedDistrict != null)
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
                          items: _upazilas
                              ?.map((item) => DropdownMenuItem<String>(
                                    value: bn ? item['name_bn'] : item['name'],
                                    child: Padding(
                                      padding: EdgeInsets.only(left: 12.w),
                                      child: Text(
                                        bn ? item['name_bn'] : item['name'],
                                        style: const TextStyle(
                                          fontSize: 14,
                                        ),
                                      ),
                                    ),
                                  ))
                              .toList(),
                          value: _selectedUpazila,
                          onChanged: (value) {
                            setState(() {
                              _selectedUpazila = value as String;
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
                    if (_selectedUpazila != null)
                      Center(
                        child: OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            backgroundColor: AppColor.kDarkGreen,
                          ),
                          onPressed: () async {
                            setState(() => {
                                  EasyLoading.show(status: 'Loading....'),
                                });
                            await getUsers();
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => VumiSebaiKormokortaDetails(
                                user: users,
                              ),
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

  Future<void> _getDivisions() async {
    const String apiUrl = 'https://api.land.gov.bd/api/divisions';
    final token = await getToken();
    final response = await http.post(
      Uri.parse(apiUrl),
      headers: {'APIAuthorization': 'bearer $token'},
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body)['data'];
      setState(() {
        _divisions = data;
      });

      EasyLoading.dismiss();
    } else {
      EasyLoading.dismiss();
      throw Exception('Failed to get divisions');
    }
  }

  //////////////////////////////////////////////////////////////////

  Future<void> _getDistricts() async {
    EasyLoading.show(status: 'Loading....');

    int v = index(_divisions, _selectedDivision);

    const String apiUrl = 'https://api.land.gov.bd/api/districts';
    final token = await getToken();
    final response = await http.post(
      Uri.parse(apiUrl),
      headers: {'APIAuthorization': 'bearer $token'},
      body: {
        'divisionId': '$v',
      },
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body)['data'];
      setState(() {
        _districts = data;
      });
      EasyLoading.dismiss();
    } else {
      EasyLoading.dismiss();
      throw Exception('Failed to get districts');
    }
  }

  ////////////////////////////////////////////////////////////////////////////////

  Future<void> _getUpazilas() async {
    setState(() {
      EasyLoading.show(status: 'Loading....');
    });
    int v = index(_districts, _selectedDistrict);
    const String apiUrl = 'https://api.land.gov.bd/api/upazilas';
    final token = await getToken();
    final response = await http.post(Uri.parse(apiUrl),
        headers: {'APIAuthorization': 'bearer $token'},
        body: {"districtsId": "$v"});

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body)["data"];
      setState(() {
        _upazilas = data;
      });

      EasyLoading.dismiss();
    } else {
      EasyLoading.dismiss();
      throw Exception('Failed to get upazilas');
    }
  }

  ///////////////////////////////////////////////////////////////////////////
  static List<dynamic> users = [];
  Future<void> getUsers() async {
    int v = index(_upazilas, _selectedUpazila);
    const String apiUrl = 'https://api.land.gov.bd/api/get-office-wise-user';
    final token = await getToken();
    final response = await http.post(Uri.parse(apiUrl),
        headers: {'APIAuthorization': 'bearer $token'},
        body: {"upazila_id": "$v"});

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body)["data"];
      print(data);
      setState(() {
        EasyLoading.dismiss();
        users = data;
      });
    } else {
      EasyLoading.dismiss();
      throw Exception('Failed to get users');
    }
  }

  /////////////////////////////////////////////////////////////////////

  int index(List? value, String? selected) {
    for (var element in value!) {
      if (element['name'] == selected || element['name_bn'] == selected) {
        return element['index'];
      }
    }
    return 0;
  }
}
