import 'package:blinkit/repository/widgets/UI/app_bar.dart';
import 'package:blinkit/repository/widgets/UI/item-card.dart';
import 'package:blinkit/repository/widgets/uihelper.dart';
import 'package:flutter/material.dart';

class CategoryScreen extends StatelessWidget {
  CategoryScreen({super.key});

  List<Map<String, String>> groceryItems = [
    {'img': 'image 41.png', 'text': 'Vegetables & \nFruits'},
    {'img': 'image 42.png', 'text': 'Atta, Dal & \nRice'},
    {'img': 'image 43.png', 'text': 'Oil, Ghee & \nMasala'},
    {'img': 'image 44 (1).png', 'text': 'Dairy, Bread & \nMilk'},
    {'img': 'image 45 (1).png', 'text': 'Biscuits & \nBakery'},
  ];
  List<Map<String, String>> snacksItems = [
    {'img': 'image 31.png', 'text': 'Chips & \nNamkeens'},
    {'img': 'image 32.png', 'text': 'Sweets & \nChocalates'},
    {'img': 'image 33.png', 'text': 'Drinks & \nJuices'},
    {'img': 'image 34.png', 'text': 'Sauces & \nSpreads'},
    {'img': 'image 35.png', 'text': 'Beauty & \nCosmetics'},
  ];
  List<Map<String, String>> householdItems = [
    {'img': 'image 36.png', 'text': 'Chips & \nNamkeens'},
    {'img': 'image 37.png', 'text': 'Sweets & \nChocalates'},
    {'img': 'image 38.png', 'text': 'Drinks & \nJuices'},
    {'img': 'image 39.png', 'text': 'Sauces & \nSpreads'},
    {'img': 'image 40.png', 'text': 'Beauty & \nCosmetics'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppBarScreen(),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Uihelper.CustomText(
                      text: 'Grocery & Kitchen',
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      fontFamily: 'bold',
                    ),
                    SizedBox(height: 8),
                    ItemCard(items: groceryItems),
                    ItemCard(items: groceryItems),
                    Uihelper.CustomText(
                      text: 'Snacks & Drinks',
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      fontFamily: 'bold',
                    ),
                    SizedBox(height: 8),

                    ItemCard(items: snacksItems),
                    Uihelper.CustomText(
                      text: 'Household Essentials',
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      fontFamily: 'bold',
                    ),
                    SizedBox(height: 8),

                    ItemCard(items: householdItems),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
