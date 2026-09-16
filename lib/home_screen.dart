import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
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
          ListTile(
            title: Text("message".tr),
            subtitle: Text("name".tr),
          ),
          SizedBox(
            height: 50,
          ),
          Row(
            children: [
              OutlinedButton(
                  onPressed: (){
                    Get.updateLocale(Locale("en","US"));
                  },
                  child: Text('English')),
              SizedBox(
                width: 20,
              ),
              OutlinedButton(
                  onPressed: (){
                    Get.updateLocale(Locale("ur","PK"));
                  },
                  child: Text('Urdu')),

            ],
          )
        ],
      ),


    );
  }
}
