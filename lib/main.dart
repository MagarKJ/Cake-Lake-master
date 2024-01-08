import 'package:cakelake/bottomnav/bottomnav.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bakery',
      theme: ThemeData(),
      debugShowCheckedModeBanner: false,
      home: const Scaffold(
        resizeToAvoidBottomInset:
            false, // bottomnav does not show when keyboard pops
        body: MyBottomNavigationBar(),
      ),
    );
  }
}
