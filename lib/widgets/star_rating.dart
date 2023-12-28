import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class StarRating extends StatefulWidget {
  const StarRating({super.key});

  @override
  State<StarRating> createState() => _StarRatingState();
}

class _StarRatingState extends State<StarRating> {
  double initalRating = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          // color: Colors.red,
          height: Get.height * 0.02,
          width: Get.width * 0.25,
          child: RatingBar.builder(
            initialRating: 0,
            maxRating: 5,
            minRating: 1,
            direction: Axis.horizontal,
            allowHalfRating: true,
            itemCount: 5,
            itemSize: Get.height * 0.02,
            itemPadding: const EdgeInsets.symmetric(horizontal: 1.0),
            itemBuilder: (context, _) => const Icon(
              Icons.star,
              color: Colors.amber,
            ),
            onRatingUpdate: (rating) {
              setState(() {
                //changing value of inital rating to the rating done by user
                initalRating = rating;
              });
            },
          ),
        ),
        SizedBox(
          // color: Colors.blue,
          height: Get.height * 0.02,
          //displaying value of rating made by user
          child: Text(
            '$initalRating Rating',
            style:
                GoogleFonts.poppins(fontSize: 10, fontWeight: FontWeight.w400),
          ),
        )
      ],
    );
  }
}
