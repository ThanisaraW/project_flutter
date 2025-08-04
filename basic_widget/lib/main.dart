import 'package:basic_widget/navbar_screen.dart';
import 'package:flutter/material.dart';

import 'navbar_screen.dart';
// import 'layout_screen.dart';
// import 'home_screen.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter basic widgets!',
      home: NavbarScreen(),
    );
  }
}