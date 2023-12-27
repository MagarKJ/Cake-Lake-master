import 'package:cakelake/widgets/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class Sales extends StatelessWidget {
  const Sales({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(10),
        ),
        color: myRed,
      ),
      height: Get.height * 0.035,
      width: Get.width * 0.13,
      child: Text(
        'HOT SALE',
        style: GoogleFonts.montserrat(
          fontSize: 8,
          fontWeight: FontWeight.w800,
          color: Colors.white,
        ),
      ),
    );
  }
}
