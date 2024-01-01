import 'package:cakelake/homepage/products/products_list.dart';
import 'package:cakelake/homepage/search_page/filters.dart';
import 'package:cakelake/widgets/appbar.dart';
import 'package:cakelake/widgets/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class ExpandedSearchBar extends StatefulWidget {
  const ExpandedSearchBar({
    super.key,
  });

  @override
  State<ExpandedSearchBar> createState() => _ExpandedSearchBarState();
}

class _ExpandedSearchBarState extends State<ExpandedSearchBar> {
  List<Product> productlist = MyProductLIst.getProducts();
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context)
            .unfocus(); // keyboard desapears when we tap on screen
      },
      child: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Center(
              child: Container(
                //color: Colors.blue,
                width: Get.width * 0.96,

                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: Get.width * 0.96,
                      // color: Colors.red,
                      height: Get.height * 0.05,
                      child: const AppHeader(
                        title1: 'Search ',
                        title2: 'Item',
                      ),
                    ),
                    Container(
                      width: Get.width * 0.96,
                      // color: Colors.red,
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
                              onTap: () {},
                              controller: _searchController,
                              onChanged: (value) {
                                setState(() {});
                              },
                              decoration: InputDecoration(
                                hintText: 'Search...',
                                hintStyle: GoogleFonts.poppins(
                                    color: myGrey,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400),
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
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.search,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: Get.width * 0.06,
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Row(
                              children: [
                                Text(
                                  'Filter',
                                  style: GoogleFonts.poppins(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                      color: myDarkGrey),
                                ),
                                Icon(
                                  Icons.filter_alt_outlined,
                                  size: Get.height * 0.03,
                                  color: myBrownColor,
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    const MyFilters(),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
