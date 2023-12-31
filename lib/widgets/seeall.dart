import 'package:cakelake/widgets/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SeeAll extends StatelessWidget {
  const SeeAll({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'SEE ALL',
          style: GoogleFonts.mulish(
              color: myMainYellow, fontSize: 12, fontWeight: FontWeight.w800),
        ),
        Icon(
          Icons.arrow_forward_ios,
          color: myMainYellow,
          size: 16,
        ),
      ],
    );
  }
}
