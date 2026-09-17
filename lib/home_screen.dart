import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:getxexplaination/counter_controller.dart';
import 'package:getxexplaination/example_three.dart';
import 'package:getxexplaination/example_two.dart';
import 'package:getxexplaination/favorateClass.dart';
import 'package:getxexplaination/screen_one.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  FavorateclassController controller = Get.put(FavorateclassController());
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
      body: ListView.builder(
        itemCount: controller.fruitList.length,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                onTap: () {
                  if(controller.temFruitList.contains(controller.fruitList[index])){
                    controller.removeFromFavorate(controller.fruitList[index].toString());
                  }
                  else{
                    controller.addToFavorate(controller.fruitList[index].toString());

                  }

                },
                title: Text(controller.fruitList[index].toString()),
                trailing: Obx(() => Icon(
                  Icons.favorite,
                  color:controller.temFruitList.contains(controller.fruitList[index]) ? Colors.white : Colors.red,)),
              ),
            );
          },
      ),

    );
  }
}
