import 'package:cakelake/login/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class GetOrder extends StatelessWidget {
  const GetOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: Column(
              children: [
                SizedBox(
                  height: Get.height * 0.125,
                ),
                SizedBox(
                  height: Get.height * 0.65,
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/splash_screen/Shopping_bag.jpg',
                        height: Get.height * 0.43,
                        width: Get.width * 0.83,
                      ),
                      SizedBox(
                        height: Get.height * 0.04,
                      ),
                      Text(
                        'Get The Order',
                        style: GoogleFonts.jost(
                          fontSize: 21.33,
                          color: myBrownColor,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                          width: Get.width * 0.83,
                          child: Text(
                            'Track your order status effortlessly. Use the order number provided to check real-time updates on delivery and expected arrival.',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.jost(
                                color: myGrey,
                                fontWeight: FontWeight.w500,
                                fontSize: 12.44),
                          ))
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
