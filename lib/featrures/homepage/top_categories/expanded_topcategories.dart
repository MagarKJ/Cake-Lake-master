import 'package:cakelake/featrures/homepage/top_categories/categories_list.dart';
import 'package:cakelake/featrures/homepage/top_categories/top_categories_list.dart';
import 'package:cakelake/products/products.dart';
import 'package:cakelake/products/products_list.dart';

import 'package:cakelake/widgets/appbar.dart';
import 'package:cakelake/utils/colors.dart';
import 'package:cakelake/widgets/star_rating.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class ExpanedTopCategories extends StatefulWidget {
  final ProductTop product;
  const ExpanedTopCategories({
    super.key,
    required this.product,
  });

  @override
  State<ExpanedTopCategories> createState() => _ExpanedTopCategoriesState();
}

class _ExpanedTopCategoriesState extends State<ExpanedTopCategories> {
  List<Product> productlist = MyProductLIst.getProducts();

  List<ProductTop> categorylist = CategoryList.wantProduct();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppHeader(
        title1: widget.product.name1,
        title2: widget.product.name2,
        icon: Icons.arrow_back_ios_new_outlined,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: SizedBox(
                //  color: Colors.amber,
                width: Get.width * 0.96,
                child: GridView.builder(
                  scrollDirection: Axis.vertical,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 5,
                    mainAxisExtent: Get.height * 0.32,
                    crossAxisSpacing: 4,
                  ),
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return ImageItem(
                      product: productlist[index],
                    );
                  },
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: Get.width * 0.05),
              child: const AppHeader(
                title1: 'Other',
                title2: 'Categories',
              ),
            ),
            SizedBox(
              height: Get.height * 0.03,
            ),
            TopCategoriesList(),
          ],
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
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
            height: Get.height * 0.01,
          ),
          Padding(
            padding: EdgeInsets.only(left: Get.width * 0.03),
            child: SizedBox(
              height: Get.height * 0.042,
              width: Get.width * 0.41,
              // color: Colors.blue,
              child: Text(
                '${widget.product.name} ( ${widget.product.amount} )',
                style: GoogleFonts.poppins(
                    fontSize: 11, fontWeight: FontWeight.w600),
                overflow: TextOverflow.clip,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: Get.width * 0.03),
            child: SizedBox(
              //color: Colors.orange,
              height: Get.height * 0.03,
              width: Get.width * 0.12,
              child: Text(
                'Rs.${widget.product.price}',
                style: GoogleFonts.poppins(
                    fontSize: 10, fontWeight: FontWeight.w600, color: myRed),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: Get.width * 0.03),
            child: SizedBox(
              width: Get.width * 0.3,
              child: StarRating(
                initialRating: widget.initialrating,
                size: 12,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
