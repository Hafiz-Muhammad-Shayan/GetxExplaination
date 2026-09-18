import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:getxexplaination/counter_controller.dart';
import 'package:getxexplaination/example_three.dart';
import 'package:getxexplaination/example_two.dart';
import 'package:getxexplaination/favorateClass.dart';
import 'package:getxexplaination/image_picker_controller.dart';
import 'package:getxexplaination/login_conroller.dart';
import 'package:getxexplaination/screen_one.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
    LoginConroller conroller = LoginConroller();

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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextFormField(
              controller: conroller.emailController.value,
              decoration: InputDecoration(
                hintText: "Email",
              ),
            ),
            TextFormField(
              controller: conroller.passwordController.value,
              decoration: InputDecoration(
                hintText: "password",
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Obx((){
              return InkWell(
                onTap: (){
                  conroller.LoginApi();
                },
                child: conroller.loading.value ? CircularProgressIndicator() : Container(
                  height: 45,
                  color: Colors.grey,
                  child: Center(
                    child: Text("Login"),
                  ),
                ),
              );
            }),
          ],
        ),
      ),

    );
  }
}
