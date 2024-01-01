import 'package:cakelake/homepage/search_page/latest.dart';
import 'package:cakelake/homepage/search_page/popularity.dart';
import 'package:cakelake/homepage/search_page/relevance.dart';
import 'package:cakelake/widgets/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class MyFilters extends StatefulWidget {
  const MyFilters({super.key});

  @override
  State<MyFilters> createState() => _MyFiltersState();
}

class _MyFiltersState extends State<MyFilters> {
  int _currentIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildNavItems(),
        _buildDetails(),
      ],
    );
  }

  Widget _buildNavItems() {
    return Container(
      width: Get.width * 0.73,
      // color: Colors.blue,
      height: Get.height * 0.04,
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildNavButton(0, 'Relevance ', Icons.thumb_up_alt_outlined),
          _buildNavButton(
              1, 'Popularity ', Icons.local_fire_department_outlined),
          _buildNavButton(2, 'Latest ', Icons.timer_outlined),
        ],
      ),
    );
  }

  Widget _buildNavButton(int index, String text, IconData icon) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _currentIndex = _currentIndex == index ? -1 : index;
        });
        // Handle navigation logic here
      },
      child: Row(
        children: [
          const SizedBox(width: 10), // Adjust spacing as needed
          Text(
            text,
            style: GoogleFonts.poppins(
              color: _currentIndex == index ? Colors.red : myDarkGrey,
              fontSize: 14,
            ),
          ),
          Icon(
            icon,
            color: _currentIndex == index ? Colors.red : myDarkGrey,
            size: Get.height * 0.021,
          ),
        ],
      ),
    );
  }

  Widget _buildDetails() {
    if (_currentIndex != -1) {
      switch (_currentIndex) {
        case 0:
          return Relevance();
        case 1:
          return Popularity();
        case 2:
          return Latest();
        default:
          return const SizedBox.shrink();
      }
    } else {
      return const SizedBox();
    }
  }
}
