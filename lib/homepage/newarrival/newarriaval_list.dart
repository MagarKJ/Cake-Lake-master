import 'package:cakelake/homepage/products/products.dart';
import 'package:cakelake/homepage/products/products_list.dart';
import 'package:cakelake/widgets/colors.dart';
import 'package:cakelake/widgets/hotsale_logo.dart';
import 'package:cakelake/widgets/star_rating.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class NewArrivalList extends StatelessWidget {
  final List<Product> productlist = MyProductLIst.getProducts();

  NewArrivalList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      //color: Colors.black,
      height: Get.height * 0.32,
      width: Get.width * 0.94,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          // itemCount: (products.length / 2)
          itemCount: 3,
          itemBuilder: (context, index) {
            return ImageItem(
              product: productlist[index],
            );
          }),
    );
  }
}

class ImageItem extends StatefulWidget {
  final Product product;
  double initialrating = 0;

  ImageItem({super.key, required this.product});

  @override
  State<ImageItem> createState() => _ImageItemState();
}

class _ImageItemState extends State<ImageItem> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(
          () => ProductDetails(product: widget.product),
        );
      },
      child: SizedBox(
        //color: Colors.blue,
        height: Get.height * 0.32,
        child: Column(
          children: [
            Stack(
              children: [
                SizedBox(
                  width: Get.width * 0.43,
                  child: Image.asset(
                    widget.product.image,
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: Get.width * 0.275,
                  ),
                  child: const Sales(),
                ),
              ],
            ),
            SizedBox(
              height: Get.height * 0.015,
            ),
            SizedBox(
              height: Get.height * 0.05,
              width: Get.width * 0.42,
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
            Container(
              //color: Colors.red,
              height: Get.height * 0.02,
              width: Get.width * 0.41,
              child: StarRating(
                initialRating: widget.initialrating,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
