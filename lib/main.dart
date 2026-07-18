import 'package:flutter/material.dart';
import 'package:workshop3_122/screen/itemfriends.dart';
//import 'screen/home.dart';
//import 'screen/item.dart';


void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('CET App ID:122'),
          backgroundColor: Colors.orange,
          centerTitle: true,
        ),
        //body: const Home(),
        body: const Friend(),
      ),
    );
  }
}
