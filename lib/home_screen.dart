import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:getxexplaination/counter_controller.dart';
import 'package:getxexplaination/screen_one.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final CounterController controller = Get.put(CounterController());

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
      body: Center(
        child: Obx((){
          return Text(
            controller.counter.toString(),
            style: TextStyle(
              fontSize: 60,
            ),);
        }),
      ),

      floatingActionButton: FloatingActionButton(
          onPressed: (){
          controller.incrementCounter();
          }),
    );
  }
}
