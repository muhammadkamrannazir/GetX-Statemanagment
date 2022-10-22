// ignore: file_names
// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, must_be_immutable, file_names, duplicate_ignore
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Counter extends StatelessWidget {
  var count = 0.obs;
  void counter() {
    count++;
  }
  Counter({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Obx(
        () => (Scaffold(
          body: Column(
            children: [
              Text(
                'Counter value is $count',
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(
                height: 50,
              ),
              // ignore: deprecated_member_use
              RaisedButton(
                  child: Text('Increment'),
                  onPressed: () {
                    counter();
                  }),
            ],
          ),
        )),
      ),
    );
  }
}
