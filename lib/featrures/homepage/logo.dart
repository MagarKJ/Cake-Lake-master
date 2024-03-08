import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class Mylogo extends StatelessWidget {
  const Mylogo({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // color: Colors.red,
      height: Get.height * 0.06,
      width: Get.width * 0.93,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: Get.height * 0.06,
            child: Image.asset(
              'assets/image/logo.jpg',
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            width: Get.width * 0.02,
          ),
          SizedBox(
              height: Get.height * 0.05,
              // color: Colors.blue,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Cake Lake bakery',
                    style: GoogleFonts.pollerOne(fontSize: 16),
                  ),
                  Text(
                    'A Little Bliss In Every Bite',
                    style: GoogleFonts.raleway(fontSize: 9),
                  )
                ],
              ))
        ],
      ),
    );
  }
}
