import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'pages/home/home_page.dart';
import 'services/service_locator.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setupLocator();
  runApp(MyApp());
}
// testing for hammad//
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        builder: (BuildContext context, child) => MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Flutter with Mediapipe',
              theme: ThemeData(
                appBarTheme: const AppBarTheme(
                  elevation: 0.0,
                  color: Colors.transparent,
                ),
              ),
              home: const HomePage(),
            ));
  }
}
