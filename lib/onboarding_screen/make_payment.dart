import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class MakePayment extends StatelessWidget {
  const MakePayment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: Column(
              children: [
                SizedBox(
                  height: Get.height * 0.25,
                ),
                SizedBox(
                  height: Get.height * 0.55,
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/splash_screen/Sales_consulting.jpg',
                        height: Get.height * 0.28,
                        width: Get.width * 0.86,
                      ),
                      SizedBox(
                        height: Get.height * 0.06,
                      ),
                      Text(
                        'Make Payement',
                        style:
                            GoogleFonts.jost(fontSize: 22, color: Colors.brown),
                      ),
                      SizedBox(
                        width: Get.width * 0.86,
                        child: Text(
                          'Complete your purchase by proceeding to checkout and entering payment details securely. Confirm the transaction to finalize and receive your order promptly.',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.jost(color: Colors.grey),
                        ),
                      )
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
