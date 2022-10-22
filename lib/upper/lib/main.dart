import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:upper/controller.dart';

void main() {
  runApp(Upper());
}
// ignore_for_file: prefer_const_constructors

// ignore: must_be_immutable
class Upper extends StatelessWidget {
  final obj = Controller();
  Upper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Obx(() => Scaffold(
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Name is ${obj.name.value}',
                    style: TextStyle(fontSize: 25),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        obj.name.value = obj.name.value.toUpperCase();
                      },
                      child: Text('Make Upper Case')),
                  SizedBox(height: 30),
                  ElevatedButton(
                      onPressed: () {
                        obj.name.value = obj.name.value.toLowerCase();
                      },
                      child: Text('Make Lovwer Case'))
                ],
              ),
            ),
          )),
    );
  }
}
