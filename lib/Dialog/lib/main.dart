// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, deprecated_member_use
import 'package:dialog/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() => runApp(Dialog());

class Dialog extends StatelessWidget {
  const Dialog({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Home(),
            ],
          ),
        ),
      ),
    );
  }
}
