import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChooseProduct extends StatelessWidget {
  const ChooseProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 409,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  'Choose Products',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: Get.height * 0.1,
                  width: Get.width * 0.90,
                  child: const Text(
                    'Select the product type that aligns with your needs, ensuring it meets specifications, functionality, and budgetary considerations. Evaluate features and user reviews for informed decision-making.',
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
