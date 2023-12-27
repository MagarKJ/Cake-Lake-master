import 'package:cakelake/bottomnav/bottomnav.dart';
import 'package:cakelake/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Bakery',
      theme: ThemeData(),
      debugShowCheckedModeBanner: false,
      home: const Scaffold(
        body: MyBottomNavigationBar(),
      ),
    );
  }
}
