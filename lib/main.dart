import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxexplaination/home_screen.dart';
import 'package:getxexplaination/screen_one.dart';
import 'package:getxexplaination/screen_two.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
      getPages: [
        GetPage(name: "/", page: () => HomeScreen(),),
        GetPage(name: "/screenOne", page: () => ScreenOne(),),
        GetPage(name: "/screenTwo", page: () => ScreenTwo(),),

      ],
    );
  }
}


