import 'package:cakelake/cart/cart.dart';
import 'package:cakelake/featrures/homepage/search_page/expanded_searchbar.dart';
import 'package:cakelake/featrures/homepage/top_categories/categories_list.dart';

import 'package:cakelake/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomSearchBar extends StatefulWidget {
  const CustomSearchBar({super.key});

  @override
  State<CustomSearchBar> createState() => _CustomSearchBarState();
}

class _CustomSearchBarState extends State<CustomSearchBar> {
  final TextEditingController _searchController = TextEditingController();
  List<ProductTop> categorylist = CategoryList.wantProduct();

  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.red,
      height: Get.height * 0.08,
      padding: EdgeInsets.only(
        left: Get.width * 0.025,
        top: Get.height * 0.015,
        bottom: Get.height * 0.015,
      ),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              onTap: () => Get.to(() => const ExpandedSearchBar()),
              readOnly: true,
              controller: _searchController,
              onChanged: (value) {
                setState(() {});
              },
              decoration: InputDecoration(
                hintText: 'Search...',
                hintStyle: GoogleFonts.poppins(
                    color: myGrey, fontSize: 12, fontWeight: FontWeight.w400),
                border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                suffixIcon: Container(
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                        bottomRight: Radius.circular(20),
                        topRight: Radius.circular(20)),
                    color: myBrownColor,
                  ),
                  child: IconButton(
                    onPressed: () {
                      Get.to(() => const ExpandedSearchBar());
                    },
                    icon: const Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(width: 8.0),
          IconButton(
            onPressed: () {
              Get.to(() => const CartPage());
            },
            icon: const Badge(
              child: Icon(Icons.shopping_cart_outlined),
            ),
          ),
        ],
      ),
    );
  }
}
