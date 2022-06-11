import 'package:flutter/material.dart';

class reglage extends StatefulWidget {
  const reglage({Key? key}) : super(key: key);

  @override
  State<reglage> createState() => _reglageState();
}

class _reglageState extends State<reglage> {
  @override
  Widget build(BuildContext context) => Scaffold(
        body: Center(
          child: Text(
            'reglage',
            style: TextStyle(fontSize: 60),
          ),
        ),
      );
}
