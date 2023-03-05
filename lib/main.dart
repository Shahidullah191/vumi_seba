import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:vumi_seba/screens/bottom_navbar/bottom_nav_bar.dart';

import 'languages/languages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 800),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',

          translations: Languages(),
          // this were you will give your local, like if its Bengali, English
          locale: const Locale('bn', 'BD'),
          fallbackLocale: const Locale('bn', 'BD'),

          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: BottomNavBar(),
        );
      },
    );
  }
}
