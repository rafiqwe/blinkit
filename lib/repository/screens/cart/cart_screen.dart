import 'package:blinkit/repository/widgets/UI/app_bar.dart';
import 'package:blinkit/repository/widgets/uihelper.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  CartScreen({super.key});

  final List<Map<String, dynamic>> itemDetails = [
    {
      'img': 'image 45.png',
      'title': 'Amul Taaza Toned\nFresh Milk',
      'price': 27,
    },
    {'img': 'image 44.png', 'title': 'Potato (Aloo)', 'price': 37},
    {
      'img': 'image 46.png',
      'title': 'Amul Taaza Toned\nFresh Milk',
      'price': 42,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppBarScreen(),
              SizedBox(height: 10),
              Center(
                child: Uihelper.CustomImage(img: 'shopping-cart (1) 1.png'),
              ),
              SizedBox(height: 5),
              Center(
                child: Uihelper.CustomText(
                  text: 'Reordering will be easy',
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  fontFamily: 'bold',
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: SizedBox(
                  height: 40,
                  child: Center(
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        // Put the base style here so all children inherit it
                        style: TextStyle(
                          fontFamily: 'regular',
                          fontWeight: FontWeight.w400,
                          fontSize: 13,
                        ),
                        children: [
                          TextSpan(
                            text:
                                'Items you order will show up here so you can buy them again easily.',
                            style: TextStyle(color: Colors.black),
                          ),
                          // You can add more spans here with different styles if needed
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 15),
              Padding(
                padding: EdgeInsets.only(left: 10),
                child: Uihelper.CustomText(
                  text: 'Bestsellers',
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  fontFamily: 'bold',
                ),
              ),
              // Remove Expanded if this is inside a SingleChildScrollView
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 220, // Give the horizontal list a specific height
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: itemDetails.length,
                    itemBuilder: (context, index) {
                      final item = itemDetails[index];

                      return Container(
                        width: 110,
                        margin: EdgeInsets.only(right: 5),
                        child: Stack(
                          clipBehavior: Clip
                              .none, // Allows the "ADD" button to overflow if needed
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Uihelper.CustomImage(img: item['img']),
                                const SizedBox(height: 13),
                                SizedBox(
                                  height: 70,
                                  child: Column(
                                    children: [
                                      Uihelper.CustomText(
                                        text: item['title'],
                                        color: Colors.black,
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      const SizedBox(height: 4),
                                      Row(
                                        children: [
                                          Uihelper.CustomImage(
                                            img: 'timer 2.png',
                                          ),
                                          const SizedBox(width: 5),
                                          Uihelper.CustomText(
                                            text: '16 MINS',
                                            color: Color(0XFF9C9C9C),
                                            fontSize: 10,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 5),
                                    ],
                                  ),
                                ),
                                Uihelper.CustomText(
                                  text: '₹ ${item['price']}',
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ],
                            ),
                            // The "ADD" Button
                            Positioned(
                              right: 3,
                              top: 75,
                              child: InkWell(
                                onTap: () {},
                                child: Chip(
                                  backgroundColor: Colors.white,
                                  side: const BorderSide(color: Colors.green),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  label: const Text(
                                    'ADD',
                                    style: TextStyle(
                                      fontSize: 11,
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xFF27AF34),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
