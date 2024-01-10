import 'package:cakelake/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class StarRating extends StatefulWidget {
  double initialRating;
  double size;

  StarRating({
    super.key,
    required this.initialRating,
    required this.size,
  });

  @override
  State<StarRating> createState() => _StarRatingState();
}

class _StarRatingState extends State<StarRating> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        RatingBar.builder(
          initialRating: widget.initialRating,
          maxRating: 5,
          minRating: 0,
          direction: Axis.horizontal,
          allowHalfRating: true,
          itemCount: 5,
          itemSize: widget.size,
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
        Text('${widget.initialRating}'),
      ],
    );
  }
}
