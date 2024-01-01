import 'package:cakelake/homepage/banners/banner.dart';
import 'package:cakelake/homepage/bigyapan.dart';
import 'package:cakelake/homepage/logo.dart';
import 'package:cakelake/homepage/newarrival/newarrival.dart';
import 'package:cakelake/homepage/ouroffers/our_offer.dart';
import 'package:cakelake/homepage/search_page/searchbar.dart';
import 'package:cakelake/homepage/top_categories/top_categories.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GestureDetector(
        onTap: () {
          FocusScope.of(context)
              .unfocus(); // keyboard desapears when we tap on screen
        },
        child: const Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                Mylogo(),
                CustomSearchBar(),
                MyBanner(),
                NewArrival(),
                OurOffers(),
                Bigyapan(),
                TopCatergories(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
