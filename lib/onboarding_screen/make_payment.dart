import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MakePayment extends StatelessWidget {
  const MakePayment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 150,
            child: Column(
              children: [
                Image.asset('assets/splash_screen/Sales_consulting.jpg'),
                SizedBox(
                  height: Get.height * 0.06,
                ),
                const Text(
                  'Make Payement',
                  style: TextStyle(
                      fontSize: 22,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: Get.width * 0.9,
                  child: const Text(
                    'Complete your purchase by proceeding to checkout and entering payment details securely. Confirm the transaction to finalize and receive your order promptly.',
                    textAlign: TextAlign.center,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
