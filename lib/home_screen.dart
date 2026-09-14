import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
        children: [
          Card(
            child: ListTile(
              title: Text("Getx Dialog Alert"),
              subtitle: Text("Getx Dialog Alert"),
              onTap: () {
                Get.defaultDialog(
                  title: "Delete Chat",
                  titlePadding: EdgeInsets.only(top: 20),
                  contentPadding: EdgeInsets.all(20),
                  middleText: "Are you sure you want to delete this chat",
                  textConfirm: "Yes",
                  textCancel: "No",
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
          onPressed: (){
            Get.snackbar(
              "Shayan warrior", "Subscribe to my youtube channel",
              icon: Icon(Icons.add),
              backgroundColor: Colors.blue.withOpacity(0.5),
              snackPosition: SnackPosition.BOTTOM,
            );
          }),

    );
  }
}
