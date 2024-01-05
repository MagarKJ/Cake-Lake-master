import 'package:cakelake/homepage/products/products.dart';
import 'package:cakelake/homepage/products/products_list.dart';
import 'package:cakelake/widgets/colors.dart';
import 'package:cakelake/widgets/star_rating.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class OurOffferList extends StatelessWidget {
  final List<Product> productlist = MyProductLIst.getProducts();

  OurOffferList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      //color: Colors.red,
      height: Get.height * 0.42,
      child: ListView.builder(
          shrinkWrap: true,
          physics: const ClampingScrollPhysics(),
          itemCount: productlist.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.only(bottom: Get.height * 0.01),
              child: Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade300,
                      offset: const Offset(2, 2),
                    )
                  ],
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: ImageItem(
                  product: productlist[index],
                ),
              ),
            );
          }),
    );
  }
}

class ImageItem extends StatefulWidget {
  final Product product;
  final double rating = 0;

  const ImageItem({
    super.key,
    required this.product,
  });

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
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(
                children: [
                  SizedBox(
                    width: Get.width * 0.3,
                    child: Image.asset(
                      widget.product.image,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
              SizedBox(
                //  color: Colors.blue,
                height: Get.height * 0.12,
                width: Get.width * 0.5,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 2,
                      child: Text(
                        '${widget.product.name} ( ${widget.product.amount} )',
                        style: GoogleFonts.poppins(
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                        ),
                        maxLines: 3,
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Text(
                        'Rs.${widget.product.price}',
                        style: GoogleFonts.poppins(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: myRed),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: StarRating(initialRating: widget.rating, size: 12,),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
