import 'package:cakelake/featrures/homepage/top_categories/categories_list.dart';
import 'package:cakelake/featrures/homepage/top_categories/expanded_topcategories.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class TopCategoriesList extends StatelessWidget {
  final List<ProductTop> categorylist = CategoryList.wantProduct();
  TopCategoriesList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.black,
      height: Get.height * 0.2,
      width: double.infinity,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 4,
          padding: EdgeInsets.symmetric(horizontal: 15),
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: Get.width * 0.01),
              child: ImageItem(
                product: categorylist[index],
              ),
            );
          }),
    );
  }
}

class ImageItem extends StatefulWidget {
  final ProductTop product;

  const ImageItem({super.key, required this.product});

  @override
  State<ImageItem> createState() => _ImageItemState();
}

class _ImageItemState extends State<ImageItem> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(() => ExpanedTopCategories(
              product: widget.product,
            ));
      },
      child: Row(
        children: [
          Column(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage(widget.product.image),
                radius: Get.height * 0.08,
              ),
              SizedBox(
                height: Get.height * 0.01,
              ),
              Center(
                child: Text(
                  '${widget.product.name1} ${widget.product.name2}',
                  style: GoogleFonts.poppins(
                      fontSize: 12, fontWeight: FontWeight.w600),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
