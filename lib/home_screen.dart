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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
         Center(
           child: TextButton(
               onPressed: (){
                 // Get.to(ScreenOne(name: "shayan",));
                 Get.toNamed("/screenOne", arguments: [
                   " Shayan",
                   "Asif"
                 ]);
               },
               child: Text("Go to next screen"),
           ),
         ),
        ],
      ),


    );
  }
}
