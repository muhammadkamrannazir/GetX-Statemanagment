// ignore_for_file: prefer_const_constructors

import 'package:dialog/Upper/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class Upper extends StatelessWidget {
  final obj = Controller();
  Upper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Obx (() =>Scaffold(
        body: Column(
          children: [
            Text(
              'Name is ${obj.name.value}',
              style: TextStyle(fontSize: 25),
            ),
            ElevatedButton(
                onPressed: () {
                  obj.name.value = obj.name.value.toUpperCase();
                },
                child: Text('Upper'))
          ],
        ),
      )),
    );
  }
}
