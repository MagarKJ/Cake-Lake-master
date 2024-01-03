
import 'package:cakelake/homepage/products/products_list.dart';
import 'package:cakelake/widgets/colors.dart';
import 'package:cakelake/widgets/star_rating.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class Relevance extends StatelessWidget {
  final List<Product> productlist = MyProductLIst.getProducts();
  Relevance({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height * 0.8,
      width: Get.width * 0.94,
      color: Colors.white,
      child: GridView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisExtent: Get.height * 0.32,
        ),
        itemCount: productlist.length,
        itemBuilder: (context, index) {
          return ImageItem(
            product: productlist[index],
          );
        },
      ),
    );
  }
}

class ImageItem extends StatefulWidget {
  final Product product;
final  double initialrating = 0;

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
    return Column(
      children: [
        Container(
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
        Container(
          height: Get.height * 0.05,
          width: Get.width * 0.41,
          // color: Colors.blue,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                // color: Colors.red,
                height: Get.height * 0.04,
                width: Get.width * 0.28,
                child: Text(
                  '${widget.product.name} ( ${widget.product.amount} )',
                  style: GoogleFonts.poppins(
                      fontSize: 11, fontWeight: FontWeight.w600),
                  overflow: TextOverflow.clip,
                ),
              ),
              Container(
                //  color: Colors.orange,
                height: Get.height * 0.04,
                width: Get.width * 0.12,
                child: Text(
                  'Rs.${widget.product.price}',
                  style: GoogleFonts.poppins(
                      fontSize: 10, fontWeight: FontWeight.w600, color: myRed),
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: Get.width * 0.02),
          child: StarRating(
            initialRating: widget.initialrating,
          ),
        ),
      ],
    );
  }
}
