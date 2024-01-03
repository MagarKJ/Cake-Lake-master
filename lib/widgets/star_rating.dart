import 'package:cakelake/widgets/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class StarRating extends StatefulWidget {
  StarRating({super.key, this.initialRating, this.size});

  double? initialRating;
  final double? size;
  @override
  State<StarRating> createState() => _StarRatingState();
}

class _StarRatingState extends State<StarRating> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        RatingBar.builder(
          initialRating: widget.initialRating ?? 0,
          maxRating: 5,
          minRating: 0,
          direction: Axis.horizontal,
          allowHalfRating: true,
          itemCount: 5,
          itemSize: widget.size ?? Get.height * 0.02,
          glowRadius: 2,
          glowColor: myStarColor,
          glow: true,
          itemPadding: const EdgeInsets.symmetric(horizontal: 1.0),
          itemBuilder: (context, _) => Icon(
            Icons.star,
            color: myStarColor,
          ),
          onRatingUpdate: (rating) {
            setState(() {
              //changing value of inital rating to the rating done by user
              widget.initialRating = rating;
            });
          },
        ),
        if (widget.initialRating != null)
          SizedBox(
            // color: Colors.blue,
            height: Get.height * 0.02,
            //displaying value of rating made by user
            child: Text(
              '${widget.initialRating}',
              style: GoogleFonts.poppins(
                  fontSize: 10, fontWeight: FontWeight.w400),
            ),
          ),
      ],
    );
  }
}
