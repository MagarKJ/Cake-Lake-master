import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductTop {
  final String name;
  final String image;

  ProductTop({
    required this.name,
    required this.image,
  });
}

class TopCategoriesList extends StatelessWidget {
  final List<ProductTop> producttop = [
    ProductTop(
      name: 'Blood Orange',
      image: 'assets/image/top_categories/topc1.jpg',
    ),
    ProductTop(
      name: 'White Cake',
      image: 'assets/image/top_categories/topc2.jpg',
    ),
    ProductTop(
      name: 'Chocolate cake',
      image: 'assets/image/top_categories/topc3.jpg',
    ),
  ];

  TopCategoriesList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.black,
      height: Get.height * 0.2,
      width: Get.width * 0.94,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: producttop.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: Get.width * 0.01),
              child: ImageItem(
                product: producttop[index],
              ),
            );
          }),
    );
  }
}

class ImageItem extends StatelessWidget {
  final ProductTop product;

  const ImageItem({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage(product.image),
              radius: Get.height * 0.08,
            ),
            SizedBox(
              height: Get.height * 0.01,
            ),
            Center(
              child: Text(
                product.name,
                style: GoogleFonts.poppins(
                    fontSize: 12, fontWeight: FontWeight.w600),
              ),
            ),
          ],
        )
      ],
    );
  }
}
