import 'package:cakelake/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyTickButton extends StatelessWidget {
  const MyTickButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height * 0.05,
      width: Get.width * 0.1,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: myGreen,
      ),
      child: const Icon(
        Icons.check,
        color: Colors.white,
      ),
    );
  }
}
