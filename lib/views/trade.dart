import 'package:flutter/material.dart';

class trade extends StatefulWidget {
  const trade({Key? key}) : super(key: key);

  @override
  State<trade> createState() => _tradeState();
}

class _tradeState extends State<trade> {
  @override
  Widget build(BuildContext context) => Scaffold(
        body: Center(
          child: Text(
            'trade',
            style: TextStyle(fontSize: 60),
          ),
        ),
      );
}
