import 'package:cakelake/widgets/button.dart';
import 'package:cakelake/widgets/colors.dart';
import 'package:cakelake/widgets/star_rating.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ExpandedFilters extends StatefulWidget {
  const ExpandedFilters({
    super.key,
  });

  @override
  State<ExpandedFilters> createState() => _ExpandedFiltersState();
}

class _ExpandedFiltersState extends State<ExpandedFilters> {
  double rating = 0;

  @override
  Widget build(BuildContext context) {
    return StatefulBuilder(
      builder: (context, setState) {
        return AlertDialog(
          scrollable: true,
          content: SizedBox(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'SORT BY:',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('PRICE'),
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.arrow_downward_outlined),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.arrow_upward_outlined),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('RATINGS'),
                    StarRating(
                      initialRating: rating,
                      size: 12,
                    ),
                  ],
                ),
                SizedBox(
                  height: Get.height * 0.03,
                ),
                const Text('PRICE RANGE:'),
                SizedBox(
                  height: Get.height * 0.03,
                ),
                Row(
                  children: [
                    const Text('Min:'),
                    const SizedBox(
                      width: 4,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: myGrey),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      height: Get.height * 0.062,
                      width: Get.width * 0.2,
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        autofocus: false,
                        decoration: const InputDecoration(
                          hintText: ' 0',
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.only(left: 10),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: Get.width * 0.1,
                    ),
                    const Text('Max:'),
                    const SizedBox(
                      width: 4,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: myGrey),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      height: Get.height * 0.062,
                      width: Get.width * 0.2,
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        autofocus: false,
                        decoration: const InputDecoration(
                          hintText: '2000',
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.only(left: 10),
                        ),
                      ),
                    ),
                  ],
                ),
                RangeSlider(
                  values: const RangeValues(0, 200),
                  min: 0,
                  max: 2000,
                  onChanged: (value) {},
                  activeColor: myBrownColor,
                  divisions: 50,
                ),
                Row(children: [
                  Expanded(
                    child: CustomButton(
                      buttonText: ' GO BACK',
                      onPressed: () {
                        Get.back();
                      },
                      width: Get.width * 0.35,
                      height: Get.height * 0.06,
                      fontSize: 10,
                      backGroundColor: myLightRed,
                    ),
                  ),
                  SizedBox(
                    width: Get.width * 0.01,
                  ),
                  Expanded(
                    child: CustomButton(
                      buttonText: 'APPLY FILTERS',
                      onPressed: () {},
                      width: Get.width * 0.35,
                      height: Get.height * 0.06,
                      fontSize: 10,
                      backGroundColor: myBrownColor,
                    ),
                  )
                ])
              ],
            ),
          ),
        );
      },
    );
  }
}
