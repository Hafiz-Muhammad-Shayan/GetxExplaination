import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:getxexplaination/counter_controller.dart';
import 'package:getxexplaination/example_two.dart';
import 'package:getxexplaination/screen_one.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  ExampleTwoController exampleTwoController = Get.put(ExampleTwoController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Center(
          child: Text(
            "Getx Tutorials",
          style: TextStyle(
            color: Colors.white,
          ),
        ),),
      ),
      body: Column(
        children: [
          Obx(() => Container(
            width: 200,
            height: 200,
            color: Colors.red.withOpacity(exampleTwoController.opacity.value),
          ),),
          Obx(() =>  Slider(value: exampleTwoController.opacity.value, onChanged: (value){
            exampleTwoController.setOpacity(value);
          }),),
        ],
      ),

    );
  }
}
