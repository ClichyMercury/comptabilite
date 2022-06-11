import 'package:comptabilite/views/cotation.dart';
import 'package:comptabilite/views/graphique.dart';
import 'package:comptabilite/views/reglage.dart';
import 'package:comptabilite/views/trade.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentIndex = 0;
  final screens = [cotation(), graphique(), trade(), reglage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("SikkA"),
          centerTitle: false,
          backgroundColor: Colors.green,
          actions: []),
      body: IndexedStack(
        index: currentIndex,
        children: screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: false,
        iconSize: 35,
        unselectedItemColor: Colors.green,
        selectedItemColor: Colors.orange,
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap: (index) => setState(() => currentIndex = index),
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.feed),
              label: 'Cotations',
              backgroundColor: Colors.blue),
          BottomNavigationBarItem(
              icon: Icon(Icons.monitor_heart_rounded),
              label: 'Graphique',
              backgroundColor: Colors.blue),
          BottomNavigationBarItem(
              icon: Icon(Icons.monetization_on_rounded),
              label: 'Trade',
              backgroundColor: Colors.blue),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Reglages',
              backgroundColor: Colors.amber),
        ],
      ),
    );
  }
}
