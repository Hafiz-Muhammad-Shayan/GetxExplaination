import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ScreenTwo extends StatefulWidget {
  const ScreenTwo({super.key});

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
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
                Get.back();
                Get.back();

              },
              child: Text("Go back"),
            ),
          ),
        ],
      ),


    );
  }
}
