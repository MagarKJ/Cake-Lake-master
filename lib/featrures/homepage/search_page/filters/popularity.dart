import 'package:cakelake/products/products.dart';
import 'package:cakelake/products/products_list.dart';
import 'package:cakelake/utils/colors.dart';
import 'package:cakelake/widgets/star_rating.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class Popularity extends StatelessWidget {
  final List<Product> productlist = MyProductLIst.getProducts();
  Popularity({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.amber,
        width: Get.width * 0.96,
        height: Get.height * 0.8,
        child: GridView.builder(
          scrollDirection: Axis.vertical,
          padding: const EdgeInsets.symmetric(
            horizontal: 15,
          ),
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 5,
            mainAxisExtent: Get.height * 0.32,
            crossAxisSpacing: 4,
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
    return GestureDetector(
      onTap: () {
        Get.to(() => ProductDetails(product: widget.product));
      },
      child: Container(
        //color: Colors.blue,
        height: Get.height * 0.24,
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              // color: Colors.red,
              width: Get.width * 0.45,
              child: Image.asset(
                widget.product.image,
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(
              height: Get.height * 0.01,
            ),
            Padding(
              padding: EdgeInsets.only(left: Get.width * 0.03),
              child: Container(
                height: Get.height * 0.042,
                width: Get.width * 0.4,
                // color: Colors.blue,
                child: Text(
                  '${widget.product.name} ( ${widget.product.amount} )',
                  style: GoogleFonts.poppins(
                      fontSize: 12, fontWeight: FontWeight.w600),
                  overflow: TextOverflow.clip,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: Get.width * 0.03),
              child: Container(
                // color: Colors.orange,
                height: Get.height * 0.03,
                width: Get.width * 0.15,
                child: Text(
                  'Rs.${widget.product.price}',
                  style: GoogleFonts.poppins(
                      fontSize: 12, fontWeight: FontWeight.w600, color: myRed),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: Get.width * 0.03),
              child: Container(
                width: Get.width * 0.3,
                child: StarRating(
                  initialRating: widget.initialrating,
                  size: 12,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
