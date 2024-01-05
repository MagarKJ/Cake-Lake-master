import 'package:cakelake/homepage/products/products_list.dart';
import 'package:cakelake/widgets/appbar.dart';
import 'package:cakelake/widgets/colors.dart';
import 'package:cakelake/widgets/star_rating.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class ExpandedOurOffers extends StatefulWidget {
  const ExpandedOurOffers({
    super.key,
  });

  @override
  State<ExpandedOurOffers> createState() => _ExpandedOurOffersState();
}

class _ExpandedOurOffersState extends State<ExpandedOurOffers> {
  List<Product> productlist = MyProductLIst.getProducts();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppHeader(
        title1: 'Our ',
        title2: 'Offers',
        icon: Icons.arrow_back_ios_new_outlined,
      
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
          itemCount: productlist.length,
          itemBuilder: (context, index) {
            return ImageItem(
              product: productlist[index],
            );
          },
        ),
      ),
    );
  }
}

class ImageItem extends StatefulWidget {
  final Product product;
  final double initialrating = 0;

  const ImageItem({
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
              size: 12,
            ),
          ),
        ],
      ),
    );
  }
}
