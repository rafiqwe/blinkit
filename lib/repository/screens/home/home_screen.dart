import 'package:blinkit/repository/widgets/UI/app_bar.dart';
import 'package:blinkit/repository/widgets/UI/item-card.dart';
import 'package:blinkit/repository/widgets/uihelper.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final List<Map<String, String>> megaItems = [
    {'img': 'image 50.png', 'title': 'Lights, Diyas \n& Candles'},
    {'img': 'image 51.png', 'title': 'Diwali Gifts'},
    {'img': 'image 52.png', 'title': 'Appliances & Gadgets'},
    {'img': 'image 53.png', 'title': 'Home \n& Living'},
  ];

  final List<Map<String, dynamic>> itemDetails = [
    {
      'img': 'image 54.png',
      'title': 'Golden Glass \nWooden Lid Candle (Oudh)',
      'price': 79,
    },
    {
      'img': 'image 57.png',
      'title': 'Royal Gulab Jamun \nBy Bikano',
      'price': 99,
    },
    {'img': 'image 63.png', 'title': 'Bikaji Bhujia', 'price': 69},
  ];

  List<Map<String, String>> groceryItems = [
    {'img': 'image 41.png', 'text': 'Vegetables & \nFruits'},
    {'img': 'image 42.png', 'text': 'Atta, Dal & \nRice'},
    {'img': 'image 43.png', 'text': 'Oil, Ghee & \nMasala'},
    {'img': 'image 44 (1).png', 'text': 'Dairy, Bread & \nMilk'},
    {'img': 'image 45 (1).png', 'text': 'Biscuits & \nBakery'},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppBarScreen(bgColor: Colors.red),
              Container(
                height: 210,
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border(
                    top: BorderSide(color: Colors.white, width: 1.0),
                  ),
                  color: Colors.red,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Uihelper.CustomImage(img: 'image 61.png'),
                        Uihelper.CustomImage(img: 'image 56.png'),
                        Uihelper.CustomText(
                          text: 'Mega Diwali Sale',
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          fontFamily: 'bold',
                        ),
                        Uihelper.CustomImage(img: 'image 56.png'),
                        Uihelper.CustomImage(img: 'image 61.png'),
                      ],
                    ),
                    SizedBox(height: 8),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: SizedBox(
                        height: 120,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: megaItems.length,
                          padding: EdgeInsets.only(right: 10),
                          itemBuilder: (context, index) {
                            final item = megaItems[index];
                            final itemTitle = item['title'] as String;
                            final itemImg = item['img'] as String;
                            return Container(
                              height: 105,
                              width: 90,
                              margin: EdgeInsets.only(right: 10),
                              padding: EdgeInsets.symmetric(
                                horizontal: 5,
                                vertical: 7,
                              ),
                              decoration: BoxDecoration(
                                color: Color(0XFFEAD3D3),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Column(
                                children: [
                                  Uihelper.CustomText(
                                    text: itemTitle,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 11,
                                    fontFamily: 'bold',
                                    textAlign: TextAlign.center,
                                  ),
                                  Expanded(
                                    child: Uihelper.CustomImage(img: itemImg),
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
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 220,
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
              SizedBox(height: 10),
              Padding(
                padding: EdgeInsets.only(left: 8),
                child: Uihelper.CustomText(
                  text: 'Grocery & Kitchen',
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  fontFamily: 'bold',
                ),
              ),
              SizedBox(height: 8),
              ItemCard(items: groceryItems),
            ],
          ),
        ),
      ),
    );
  }
}
