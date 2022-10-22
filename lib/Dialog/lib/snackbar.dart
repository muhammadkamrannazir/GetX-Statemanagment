// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Snackbar extends StatelessWidget {
  const Snackbar({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            // ignore: deprecated_member_use
            RaisedButton(
                  child: Text(
                    'Show Snack',
                    style: TextStyle(fontSize: 15, color: Colors.red),
                  ),
                  onPressed: () {
                    Get.snackbar(
                      'Snackbar', "Thank You! For Check-in Today!",
                      colorText: Colors.black,
                      snackPosition: SnackPosition.BOTTOM,
                      backgroundColor: Colors.grey,
                      onTap: (snack) => 'false',
                      // titleText: Title(color: Colors.purple, child: Text('Kamran')),
                      // messageText: Text('Muhammad Kamran Nazir'),
                      borderRadius: 60,
                      animationDuration: Duration(milliseconds: 1000),
                      backgroundGradient:
                          LinearGradient(colors: [Colors.amber, Colors.purple]),
                      borderWidth: 3,
                      borderColor: Colors.red,
                      isDismissible: true,
                      dismissDirection: DismissDirection.horizontal,
                      forwardAnimationCurve: Curves.bounceOut,
                      icon: Icon(
                        Icons.send_sharp,
                        color: Colors.blueAccent,
                      ),
                      shouldIconPulse: true,
                    );
                  },
                ),
          ],
        ),
      ),
    );
  }
}