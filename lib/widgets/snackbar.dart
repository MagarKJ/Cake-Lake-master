import 'package:cakelake/homepage/products/cart.dart';
import 'package:cakelake/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

void showCustomSnackBar(BuildContext context, String text) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      backgroundColor: myBrownColor,
      duration: const Duration(
        seconds: 2,
      ),
      elevation: 0,
      content: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Icon(
                Icons.shopping_cart_checkout,
                color: Colors.white,
              ),
              Text(
                text,
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500, fontSize: 15),
              ),
            ],
          ),
          GestureDetector(
            onTap: () {
              Get.to(() => const CartPage());
            },
            child: Row(
              children: [
                Text(
                  'View Cart',
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500, fontSize: 15),
                ),
                const Icon(
                  Icons.arrow_forward,
                ),
              ],
            ),
          ),
        ],
      ),
      behavior: SnackBarBehavior.floating,
    ),
  );
}
