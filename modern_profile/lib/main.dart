import 'package:flutter/material.dart';

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
          backgroundColor: Colors.black,
          leading: Icon(Icons.menu, color: Colors.white,), //Icon Widget
          title: Text("Calendar"), //Text or Messages
          actions: [
            Icon(Icons.search, color: Colors.white,),
            Icon(Icons.notifications, color: Colors.white,),
          ],
        ),
      ),
    );
  }
}