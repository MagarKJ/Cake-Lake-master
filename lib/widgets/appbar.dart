import 'package:cakelake/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class AppHeader extends StatelessWidget implements PreferredSizeWidget {
  final String title1;
  final String? title2;
  final IconData? icon;
  // final VoidCallback? onPressed;
  const AppHeader({
    super.key,
    required this.title1,
    this.title2,
    this.icon,
    // this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        children: [
          if (icon != null)
            IconButton(
              onPressed: () {
                Get.back();
              },
              icon: Icon(
                icon,
                color: myBrownColor,
              ),
            ),
          RichText(
            text: TextSpan(
              text: title1,
              style: GoogleFonts.jost(
                  fontSize: 22,
                  fontWeight: FontWeight.w700,
                  color: myBrownColor),
              children: <TextSpan>[
                if (title2 != null)
                  TextSpan(
                    text: ' $title2',
                    style: GoogleFonts.jost(
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                      color: myGrey,
                    ),
                  ),
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
