import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyBottomNavigator extends StatelessWidget {
  const MyBottomNavigator({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      height: Get.height * 0.1,
      width: Get.width,
    );
  }
}
