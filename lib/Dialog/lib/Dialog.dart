// ignore_for_file: prefer_const_literals_to_create_immutables, deprecated_member_use, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Dialog extends StatelessWidget {
  const Dialog({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            RaisedButton(
                  child: Text(
                    'Choose one ',
                    style: TextStyle(fontSize: 20),
                  ),
                  color: Colors.grey,
                  hoverColor: Colors.amber,
                  onPressed: () {
                    Get.defaultDialog(
                      title: 'Error',
                      middleText: "This is Dialog",
                      titleStyle: TextStyle(color: Colors.amber, fontSize: 20),
                      backgroundColor: Colors.grey,
                      radius: 200,
                      content: Row(
                        children: [
                          CircularProgressIndicator(
                            backgroundColor: Colors.red,
                          ),
                          SizedBox(
                            width: 80,
                          ),
                          Text('You Data is loading'),
                        ],
                      ),
                      onCancel: () {},
                      // confirmTextColor: Colors.red,
                      onConfirm: () {},
                      // cancelTextColor: Colors.red,
                      // buttonColor: Colors.amber,
                      cancel: Text('Cancel'),
                      confirm: Text('Confirm'),
                      // actions: [
                      //   RaisedButton(
                      //       child: Text('Close'),
                      //       onPressed: () {
                      //         Get.back();
                      //       }),
                      //   RaisedButton(
                      //       child: Text('Action-2'),
                      //       onPressed: () {
                      //         AppBar(
                      //           backgroundColor: Colors.amber,
                      //         );
                      //       }),
                      // ],
                      // barrierDismissible: false,
                    );
                  },
                ),
            ],
        ),
      ),
    );
  }
}