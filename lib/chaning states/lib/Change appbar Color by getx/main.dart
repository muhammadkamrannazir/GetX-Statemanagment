// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'controller.dart';
void main(List<String> args) {
  runApp(App());
}

class App extends StatelessWidget {
  App({Key? key}) : super(key: key);
  Controller controller = Get.put(Controller());
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Obx(
        () =>
      Scaffold(
        appBar: AppBar(
          title: Text('Kamran'),
          backgroundColor: controller.color.value,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                child: Text('Red'),
                onPressed: () {
                  controller.color.value = Colors.red;
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.red,
                ),
              ),
              SizedBox(height: 20,),
              ElevatedButton(
                child: Text('Green'),
                onPressed: () {
                  controller.color.value = Colors.green;
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.green,
                ),
              ),
              SizedBox(height: 20,),
              ElevatedButton(
                child: Text('Blue'),
                onPressed: () {
                  controller.color.value = Colors.blue;
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue,
                ),
              ),
            ],
          ),
        ),
      ),
      ),
    );
  }
}
