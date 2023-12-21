import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class ChooseProduct extends StatelessWidget {
  const ChooseProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: Column(
              children: [
                SizedBox(
                  height: Get.height * 0.6,
                ),
                SizedBox(
                  height: Get.height * 0.2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Choose Products',
                        style:
                            GoogleFonts.jost(fontSize: 22, color: Colors.brown),
                      ),
                      SizedBox(
                        height: Get.height * 0.1,
                        width: Get.width * 0.86,
                        child: Text(
                          'Select the product type that aligns with your needs, ensuring it meets specifications, functionality, and budgetary considerations. Evaluate features and user reviews for informed decision-making.',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.jost(color: Colors.grey),
                        ),
                      ),
                    ],
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
