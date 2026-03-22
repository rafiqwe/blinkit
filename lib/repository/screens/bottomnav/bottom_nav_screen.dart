import 'package:blinkit/repository/screens/cart/cart_screen.dart';
import 'package:blinkit/repository/screens/category/category_screen.dart';
import 'package:blinkit/repository/screens/home/home_screen.dart';
import 'package:blinkit/repository/screens/print/print_screen.dart';
import 'package:blinkit/repository/widgets/uihelper.dart';
import 'package:flutter/material.dart';

class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({super.key});

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  int currentIndex = 0;
  List<Widget> pages = [
    HomeScreen(),
    CartScreen(),
    CategoryScreen(),
    PrintScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: currentIndex, children: pages),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Uihelper.CustomImage(img: 'home 1.png'),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Uihelper.CustomImage(img: 'shopping-bag 1.png'),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Uihelper.CustomImage(img: 'category 1.png'),
            label: 'Category',
          ),
          BottomNavigationBarItem(
            icon: Uihelper.CustomImage(img: 'printer 1.png'),
            label: 'Print',
          ),
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
      ),
    );
  }
}
