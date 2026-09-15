import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxexplaination/screen_one.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Center(child: Text(
            "Getx Tutorials",
          style: TextStyle(
            color: Colors.white,
          ),
        ),),
      ),
      body: Container(
        height: Get.height * 0.3,
        width: Get.width * 0.8,
        color: Colors.red,
        child: Center(
            child: Text("Center")),
      ),


    );
  }
}
