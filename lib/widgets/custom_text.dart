import 'package:cakelake/widgets/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextField extends StatelessWidget {
  final IconData prefixIcon;
  final String hintText;
  final bool obscureText;
  final bool? showPassword;
  final ValueChanged<bool>? onTogglePassword;

  const CustomTextField({
    super.key,
    required this.prefixIcon,
    required this.hintText,
    required this.obscureText,
    this.showPassword,
    this.onTogglePassword,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Get.height * 0.0645,
      child: TextFormField(
        obscureText: obscureText && !(showPassword ?? false),
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: myBrownColor),
            borderRadius: BorderRadius.circular(3),
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide(color: myGrey),
            borderRadius: BorderRadius.circular(3),
          ),
          prefixIcon: Icon(prefixIcon, color: myGrey),
          suffixIcon: obscureText
              ? IconButton(
                  onPressed: () {
                    onTogglePassword?.call(!(showPassword ?? false));
                  },
                  icon: Icon(
                    showPassword ?? false
                        ? Icons.visibility
                        : Icons.visibility_off,
                    color: myGrey,
                  ),
                )
              : null,
          hintText: hintText,
          floatingLabelAlignment: FloatingLabelAlignment.center,
          hintStyle: GoogleFonts.montserrat(
            color: myGrey,
            fontSize: 11.43,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
