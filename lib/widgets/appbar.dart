import 'package:cakelake/widgets/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class AppHeader extends StatelessWidget implements PreferredSizeWidget {
  final String title1;
  final String title2;

  const AppHeader({super.key, required this.title1, required this.title2});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        children: [
          IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
              size: 23,
            ),
          ),
          RichText(
            text: TextSpan(
              text: title1,
              style: GoogleFonts.jost(
                  fontSize: 22,
                  fontWeight: FontWeight.w700,
                  color: Colors.black),
              children: <TextSpan>[
                TextSpan(
                  text: title2,
                  style: GoogleFonts.jost(
                      fontSize: 22, fontWeight: FontWeight.w500, color: myGrey),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(60.0);
}
