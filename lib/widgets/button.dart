import 'package:cakelake/widgets/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback onPressed;
  final double width;
  final double height;

  const CustomButton({
    super.key,
    required this.buttonText,
    required this.onPressed,
    required this.width,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: myBrownColor,
        padding: EdgeInsets.symmetric(
          horizontal: width,
          vertical: height,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(3),
        ),
      ),
      child: Text(
        buttonText,
        style: GoogleFonts.montserrat(
          color: Colors.white,
          fontSize: 19.05,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
