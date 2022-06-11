import 'package:flutter/material.dart';

class graphique extends StatefulWidget {
  const graphique({Key? key}) : super(key: key);

  @override
  State<graphique> createState() => _graphiqueState();
}

class _graphiqueState extends State<graphique> {
  @override
  Widget build(BuildContext context) => Scaffold(
        body: Center(
          child: Text(
            'graphique',
            style: TextStyle(fontSize: 60),
          ),
        ),
      );
}
