import 'dart:async';

import 'package:comptabilite/MyHomePage.dart';
import 'package:flutter/material.dart';

class flashScreen extends StatefulWidget {
  const flashScreen({Key? key}) : super(key: key);

  @override
  State<flashScreen> createState() => _flashScreenState();
}

class _flashScreenState extends State<flashScreen> {
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5), (() {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (_) => const MyHomePage(title: 'SikkA')));
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            "assets/images/financial0.png",
            height: 175,
            width: 175,
          ),
          SizedBox(
            height: 55,
          ),
          CircularProgressIndicator(
            color: Colors.green,
          )
        ],
      )),
    );
  }
}
