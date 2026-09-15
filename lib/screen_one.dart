import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxexplaination/screen_two.dart';

class ScreenOne extends StatefulWidget {
  var name;
  ScreenOne({
    super.key,
    this.name,
  });

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Center(
          child: Text(
          "Getx Tutorials" + Get.arguments[0] ,
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
                Get.to(ScreenTwo());
              },
              child: Text("Go to screen two"),
            ),
          ),
        ],
      ),


    );
  }
}
