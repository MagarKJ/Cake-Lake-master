import 'package:cakelake/featrures/homepage/banners/banner.dart';
import 'package:cakelake/featrures/homepage/bigyapan.dart';
import 'package:cakelake/featrures/homepage/new%20arrivals/new_arrivals.dart';
import 'package:cakelake/featrures/homepage/our%20offers/our_offers.dart';

import 'package:cakelake/featrures/homepage/best%20picks/recomended.dart';
import 'package:cakelake/featrures/homepage/search_page/searchbar.dart';
import 'package:cakelake/featrures/homepage/top_categories/top_categories.dart';
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
                //Mylogo(),
                CustomSearchBar(),
                MyBanner(),
                NewArrival(),
                OurOffers(),
                Bigyapan(),
                TopCatergories(),
                Recomended(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
