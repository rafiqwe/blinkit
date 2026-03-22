import 'package:blinkit/domain/app_color.dart';
import 'package:blinkit/repository/widgets/uihelper.dart';
import 'package:flutter/material.dart';

class AppBarScreen extends StatelessWidget {
  final Color? bgColor;
  // 1. Move bgColor inside curly braces to make it optional
  AppBarScreen({this.bgColor, super.key});

  final TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // 2. Logic to determine if we are in "Red Mode"
    final bool isRedMode = bgColor == Colors.red;
    final Color textColor = isRedMode ? Colors.white : Colors.black;

    return Stack(
      children: [
        Container(
          height: 155,
          width: double.infinity,
          // 3. Fallback to your custom theme color if bgColor is null
          color: isRedMode ? bgColor : AppColor.ScaffoldBackgroundColor,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Uihelper.CustomText(
                  text: 'Blinkit in',
                  color: textColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  fontFamily: 'bold',
                ),
                Uihelper.CustomText(
                  text: '16 minutes',
                  color: textColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  fontFamily: 'bold',
                ),
                Row(
                  children: [
                    Uihelper.CustomText(
                      text: 'HOME -',
                      color: textColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                      fontFamily: 'bold',
                    ),
                    // Use Flexible/Expanded to prevent overflow on smaller screens
                    Flexible(
                      child: Uihelper.CustomText(
                        text: ' Muhammad Rabbi, Mawna, Gazipur',
                        color: textColor,
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 13),
                Uihelper.CustomTextFiled(
                  controller: searchController,
                  text: 'Search "eggs"',
                ),
              ],
            ),
          ),
        ),
        const Positioned(
          right: 10,
          top: 28,
          child: CircleAvatar(
            radius: 20,
            backgroundColor: Colors.white,
            child: Icon(Icons.person, color: Colors.black),
          ),
        ),
      ],
    );
  }
}
