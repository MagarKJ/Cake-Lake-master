import 'package:cakelake/products/products.dart';
import 'package:cakelake/products/products_list.dart';
import 'package:cakelake/utils/colors.dart';
import 'package:cakelake/widgets/hotsale_logo.dart';
import 'package:cakelake/widgets/star_rating.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class RecomendedList extends StatefulWidget {
  const RecomendedList({
    super.key,
  });

  @override
  State<RecomendedList> createState() => _RecomendedListState();
}

class _RecomendedListState extends State<RecomendedList> {
  final List<Product> productlist = MyProductLIst.getProducts();
  // final shop = context.read<Shop>();

  // final productMenu = shop.productMenu;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      //color: Colors.black,
      height: Get.height * 0.32,
      width: double.infinity,
      child: ListView.separated(
          shrinkWrap: true,
          padding: const EdgeInsets.symmetric(horizontal: 8),
          scrollDirection: Axis.horizontal,
          // itemCount: (products.length / 2),
          itemCount: 3,
          itemBuilder: (context, index) {
            return ImageItem(
              product: productlist[index],
            );
          },
          separatorBuilder: (context, index) => SizedBox(
                width: Get.width * 0.02,
              )),
    );
  }
}

class ImageItem extends StatefulWidget {
  final Product product;
  final double userRating = 0;

  const ImageItem({super.key, required this.product});

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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: Get.width * 0.43,
              child: Image.asset(
                widget.product.image,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: Get.height * 0.015,
            ),
            Padding(
              padding: EdgeInsets.only(left: Get.width * 0.03),
              child: Container(
                height: Get.height * 0.042,
                width: Get.width * 0.38,
                // color: Colors.blue,
                child: Text(
                  '${widget.product.name} ( ${widget.product.amount} )',
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  style: GoogleFonts.poppins(
                      fontSize: 12, fontWeight: FontWeight.w600),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: Get.width * 0.03),
              child: Container(
                // color: Colors.orange,
                height: Get.height * 0.022,
                width: Get.width * 0.2,
                child: Text(
                  'Rs.${widget.product.price}',
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  style: GoogleFonts.poppins(
                      fontSize: 12, fontWeight: FontWeight.w600, color: myRed),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: Get.width * 0.03),
              child: Container(
                //  color: Colors.red,
                height: Get.height * 0.02,
                width: Get.width * 0.35,
                child: StarRating(
                  initialRating: widget.userRating,
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
