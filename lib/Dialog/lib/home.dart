// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, deprecated_member_use
import 'package:dialog/Counter.dart';
import 'package:dialog/Upper/upper.dart';
import 'package:dialog/snackbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
          centerTitle: true,
          title: Title(
            color: Colors.red,
            child: Text('State Management'),
          ),
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Counter(),
                // SizedBox(height: 10),
                Upper(),
                // SizedBox(height: 10),
                Snackbar(),
                // SizedBox(height: 10),
                Dialog(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
