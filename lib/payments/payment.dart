import 'package:cakelake/payments/customtick.dart';
import 'package:cakelake/payments/payment_methodlist.dart';
import 'package:cakelake/widgets/appbar.dart';
import 'package:cakelake/widgets/button.dart';
import 'package:cakelake/widgets/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class PaymentMethod extends StatefulWidget {
  PaymentMethod({super.key});

  @override
  State<PaymentMethod> createState() => _PaymentMethodState();
}

class _PaymentMethodState extends State<PaymentMethod> {
  int selectedIndex = -1;

  void toggleSelectedIndex(int index) {
    setState(() {
      if (selectedIndex == index) {
        selectedIndex = -1;
      } else {
        selectedIndex = index;
      }
    });
  }

  final List<Payment> paymentList = PaymentOptions.getPayment();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppHeader(
        title1: 'Payment',
        icon: Icons.arrow_back_ios_new_outlined,
      ),
      body: Padding(
        padding:
            EdgeInsets.only(left: Get.width * 0.04, top: Get.height * 0.02),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  // color: Colors.amber,
                  width: Get.width * 0.92,

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Deliver To:',
                        style:
                            GoogleFonts.jost(fontSize: 22, color: myBrownColor),
                      ),
                      SizedBox(
                        height: Get.height * 0.01,
                      ),
                      Container(
                        height: Get.height * 0.148,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            //   color: Colors.amber,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: myLightGrey)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              height: Get.height * 0.141,
                              child: Card(
                                child: Image.asset(
                                  'assets/image/payment_opt/ward7.jpg',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: Get.width * 0.01),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Ward 7',
                                    style: GoogleFonts.poppins(
                                        color: myBrownColor, fontSize: 20),
                                  ),
                                  Text(
                                    'Ratnachowk, Pokhara',
                                    style: GoogleFonts.poppins(
                                        color: myDarkGrey, fontSize: 15),
                                  ),
                                  Text(
                                    '9860700456',
                                    style: GoogleFonts.poppins(
                                        color: myDarkGrey, fontSize: 15),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: Get.width * 0.07),
                              child: const MyTickButton(),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: Get.height * 0.01,
                      ),
                      Text(
                        'Payment Methods:',
                        style:
                            GoogleFonts.jost(fontSize: 22, color: myBrownColor),
                      ),
                      SizedBox(
                        height: Get.height * 0.01,
                      ),
                      Container(
                        // color: Colors.amber,
                        height: Get.height * 0.67,
                        width: double.infinity,
                        child: ListView.separated(
                          separatorBuilder: (BuildContext context, int index) {
                            return SizedBox(height: Get.height * 0.02);
                          },
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: paymentList.length,
                          itemBuilder: (context, index) {
                            return Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: myLightGrey),
                                borderRadius: BorderRadius.circular(10),
                                //  color: Colors.blue,
                              ),
                              child: PaymentItems(
                                index: index,
                                selectedIndex: selectedIndex,
                                onTap: () {
                                  setState(() {
                                    toggleSelectedIndex(index);
                                  });
                                },
                                paymentmtd: paymentList[index],
                              ),
                            );
                          },
                        ),
                      ),
                      SizedBox(
                        height: Get.height * 0.01,
                      ),
                      Text(
                        'Order Info:',
                        style:
                            GoogleFonts.jost(fontSize: 22, color: myBrownColor),
                      ),
                      SizedBox(
                        height: Get.height * 0.01,
                      ),
                      Container(
                        height: Get.height * 0.29,
                        decoration: BoxDecoration(
                            //   color: Colors.amber,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: myLightGrey)),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: Get.width * 0.03),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Particulars',
                                    style: GoogleFonts.poppins(
                                        color: myBrownColor, fontSize: 18),
                                  ),
                                  Text(
                                    'Amount',
                                    style: GoogleFonts.poppins(
                                        color: myBrownColor, fontSize: 18),
                                  ),
                                ],
                              ),
                              Divider(
                                color: myLightGrey,
                                height: 30,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Red Velvet & Cream Cheese x 1',
                                    style: GoogleFonts.poppins(
                                        color: myDarkGrey, fontSize: 13),
                                  ),
                                  Text(
                                    'Rs.1200x1',
                                    style: GoogleFonts.poppins(
                                        color: myRed, fontSize: 13),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'White Cake x 1',
                                    style: GoogleFonts.poppins(
                                        color: myDarkGrey, fontSize: 13),
                                  ),
                                  Text(
                                    'Rs.1000x1',
                                    style: GoogleFonts.poppins(
                                        color: myRed, fontSize: 13),
                                  ),
                                ],
                              ),
                              Divider(
                                color: myLightGrey,
                                height: 30,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Subtotal',
                                    style: GoogleFonts.poppins(
                                        color: myBrownColor, fontSize: 14),
                                  ),
                                  Text(
                                    'Rs.2200',
                                    style: GoogleFonts.poppins(
                                        color: myRed, fontSize: 14),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: Get.height * 0.01,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Delivery Charge',
                                    style: GoogleFonts.poppins(
                                        color: myBrownColor, fontSize: 14),
                                  ),
                                  Text(
                                    'Rs.100',
                                    style: GoogleFonts.poppins(
                                        color: myRed, fontSize: 14),
                                  ),
                                ],
                              ),
                              Divider(
                                color: myLightGrey,
                                height: 30,
                              ),
                              SizedBox(),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Total',
                                    style: GoogleFonts.poppins(
                                        color: myBrownColor, fontSize: 14),
                                  ),
                                  Text(
                                    'Rs.2300',
                                    style: GoogleFonts.poppins(
                                        color: myRed, fontSize: 14),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: Get.height * 0.02,
            ),
            CustomButton(
              buttonText: 'Continue Payment',
              onPressed: () {},
              width: Get.width * 0.5,
              height: Get.height * 0.06,
              fontSize: 14,
              backGroundColor: myBrownColor,
            ),
            SizedBox(
              height: Get.height * 0.02,
            ),
          ],
        ),
      ),
    );
  }
}

class PaymentItems extends StatefulWidget {
  final Payment paymentmtd;
  PaymentItems(
      {super.key,
      required this.paymentmtd,
      required this.onTap,
      required this.selectedIndex,
      required this.index});

  int selectedIndex;
  Function onTap;
  int index;

  @override
  State<PaymentItems> createState() => _PaymentItemsState();
}

class _PaymentItemsState extends State<PaymentItems> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GestureDetector(
        onTap: () {
          widget.onTap();
          // log(widget.index.toString() + 'index');
          // log(widget.selectedIndex.toString() + 'selecteddindex');
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              // color: Colors.red,
              height: Get.height * 0.15,
              width: Get.width * 0.3,
              child: Image.asset(
                widget.paymentmtd.image,
                fit: BoxFit.scaleDown,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: Get.width * 0.01),
              child: Container(
                // color: Colors.amber,
                width: Get.width * 0.45,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.paymentmtd.name,
                      style: GoogleFonts.poppins(
                          color: myBrownColor, fontSize: 20),
                    ),
                    Text(
                      widget.paymentmtd.subtitle,
                      style:
                          GoogleFonts.poppins(color: myDarkGrey, fontSize: 15),
                    ),
                  ],
                ),
              ),
            ),
            widget.selectedIndex == widget.index
                ? const MyTickButton()
                : Container()
          ],
        ),
      ),
    );
  }
}
