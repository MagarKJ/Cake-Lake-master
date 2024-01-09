import 'package:cakelake/utils/pathing.dart';
import 'package:cakelake/widgets/appbar.dart';
import 'package:cakelake/widgets/button.dart';
import 'package:cakelake/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class AccountsPage extends StatefulWidget {
  const AccountsPage({super.key});

  @override
  State<AccountsPage> createState() => _AccountsPageState();
}

class _AccountsPageState extends State<AccountsPage> {
  bool s1 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppHeader(
        title1: 'My',
        title2: 'Profile',
        icon: Icons.arrow_back_ios_new,
      ),
      body: Align(
        alignment: Alignment.topCenter,
        child: Container(
          //color: Colors.amber,
          width: Get.width * 0.9,
          height: Get.height * 0.7,
          child: Column(
            children: [
              Row(
                children: [
                  SizedBox(
                    height: Get.height * 0.14,
                  ),
                  Stack(
                    children: [
                      Container(
                        //color: Colors.amber,
                        child: Row(
                          children: [
                            CircleAvatar(
                              backgroundImage: const AssetImage(userImage),
                              radius: Get.width * 0.1,
                            ),
                            SizedBox(
                              width: Get.width * 0.04,
                              height: Get.height * 0.12,
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                          height: Get.height * 0.05,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: myBrownColor,
                              border:
                                  Border.all(width: 2, color: Colors.white)),
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.edit_outlined,
                              color: Colors.white,
                              size: Get.width * 0.06,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    width: Get.width * 0.5,
                    //color: Colors.red,
                    height: Get.height * 0.1,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Eric Ale',
                          style: GoogleFonts.poppins(
                              fontSize: 20, color: myBrownColor),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.mail_outline,
                              color: myDarkGrey,
                            ),
                            SizedBox(
                              width: Get.width * 0.02,
                            ),
                            Text(
                              'abc@gmail.com',
                              style: GoogleFonts.poppins(
                                  fontSize: 14, color: myDarkGrey),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.call_outlined,
                              color: myDarkGrey,
                            ),
                            SizedBox(
                              width: Get.width * 0.02,
                            ),
                            Text(
                              '+9779814108861',
                              style: GoogleFonts.poppins(
                                  fontSize: 14, color: myDarkGrey),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: Get.height * 0.04,
              ),
              Container(
                // color: Colors.red,
                height: Get.height * 0.4,
                width: Get.width * 0.9,
                child: Column(
                  children: [
                    _buildRowContent(context, 'MyFavourite',
                        Icons.favorite_outline, Icons.arrow_forward_ios, () {}),
                    _buildRowContent(context, 'Purchase History',
                        Icons.history_outlined, Icons.arrow_forward_ios, () {}),
                    _buildRowContent(
                        context,
                        'Manage Shiping Address',
                        Icons.location_on_outlined,
                        Icons.arrow_forward_ios,
                        () {}),
                    _buildRowContent(context, 'Change Password',
                        Icons.vpn_key_outlined, Icons.arrow_forward_ios, () {}),
                    Container(
                      //   color: Colors.red,
                      height: Get.height * 0.06,
                      width: Get.width * 0.82,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Row(
                              children: [
                                Icon(
                                  Icons.feed_outlined,
                                  color: myBrownColor,
                                ),
                                SizedBox(
                                  width: Get.width * 0.03,
                                ),
                                Text(
                                  'Newsletter Subscription',
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14,
                                  ),
                                )
                              ],
                            ),
                          ),
                          Switch(
                            value: s1,
                            activeColor: Colors.white,
                            activeTrackColor: myBrownColor,
                            inactiveThumbColor: myBrownColor,
                            inactiveTrackColor: Colors.white,
                            onChanged: (bool value) {
                              setState(() {
                                s1 = value;
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomSheet: CustomButton(
        buttonText: 'LOG OUT',
        onPressed: () {},
        width: Get.width * 0.4,
        height: Get.height * 0.06,
        fontSize: 12,
        backGroundColor: myLightRed,
        icon: Icons.logout_outlined,
      ),
    );
  }

  Widget _buildRowContent(BuildContext context, String title, IconData icon1,
      IconData icon2, void Function()? onPressed) {
    return Column(
      children: [
        GestureDetector(
          onTap: onPressed,
          child: ListTile(
            title: Row(
              children: [
                Icon(
                  icon1,
                  color: myBrownColor,
                ),
                SizedBox(
                  width: Get.width * 0.03,
                ),
                Text(
                  title,
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
            trailing: Icon(
              icon2,
              color: myDarkGrey,
            ),
          ),
        ),
      ],
    );
  }
}
