import 'package:cakelake/homepage/newarrival/newarriaval_list.dart';
import 'package:cakelake/widgets/appbar.dart';
import 'package:cakelake/widgets/colors.dart';
import 'package:cakelake/widgets/star_rating.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class ExpandedNewArrival extends StatefulWidget {
  late List<Product> products;
  ExpandedNewArrival({
    super.key,
    required this.products,
  });

  @override
  State<ExpandedNewArrival> createState() => _ExpandedNewArrivalState();
}

class _ExpandedNewArrivalState extends State<ExpandedNewArrival> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppHeader(
        title1: 'New ',
        title2: 'Arrival',
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: GridView.builder(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 5,
            mainAxisExtent: Get.height * 0.32,
          ),
          itemCount: widget.products.length,
          itemBuilder: (context, index) {
            return ImageItem(
              product: widget.products[index],
            );
          },
        ),
      ),
    );
  }
}

class ImageItem extends StatefulWidget {
  final Product product;
  double initialrating = 0;

   ImageItem({
    super.key,
    required this.product,
  });

  @override
  State<ImageItem> createState() => _ImageItemState();
}

class _ImageItemState extends State<ImageItem> {
  double initalRating = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // color: Colors.blue,
      height: Get.height * 0.2,
      child: Column(
        children: [
          SizedBox(
            // color: Colors.red,
            width: Get.width * 0.44,
            child: Image.asset(
              widget.product.image,
              fit: BoxFit.fill,
            ),
          ),
          SizedBox(
            height: Get.height * 0.015,
          ),
          SizedBox(
            height: Get.height * 0.05,
            width: Get.width * 0.41,
            // color: Colors.blue,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: SizedBox(
                    //  color: Colors.red,
                    height: Get.height * 0.04,
                    width: Get.width * 0.28,
                    child: Text(
                      '${widget.product.name} ( ${widget.product.amount} )',
                      style: GoogleFonts.poppins(
                          fontSize: 11, fontWeight: FontWeight.w600),
                      overflow: TextOverflow.clip,
                    ),
                  ),
                ),
                SizedBox(
                  //color: Colors.orange,
                  height: Get.height * 0.04,
                  width: Get.width * 0.12,
                  child: Text(
                    'Rs.${widget.product.price}',
                    style: GoogleFonts.poppins(
                        fontSize: 10,
                        fontWeight: FontWeight.w600,
                        color: myRed),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: Get.width * 0.03),
            child: StarRating(
              initialRating: widget.initialrating,
            ),
          ),
        ],
      ),
    );
  }
}
