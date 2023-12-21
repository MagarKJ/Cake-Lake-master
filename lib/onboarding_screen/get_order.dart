import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
                      Image.asset('assets/splash_screen/Shopping_bag.jpg'),
                      SizedBox(
                        height: Get.height * 0.04,
                      ),
                      const Text(
                        'Get The Order',
                        style: TextStyle(
                            fontSize: 22,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                          width: Get.width * 0.9,
                          child: const Text(
                            'Track your order status effortlessly. Use the order number provided to check real-time updates on delivery and expected arrival.',
                            textAlign: TextAlign.center,
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
