import 'package:blinkit/repository/widgets/UI/app_bar.dart';
import 'package:blinkit/repository/widgets/uihelper.dart';
import 'package:flutter/material.dart';

class PrintScreen extends StatelessWidget {
  const PrintScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFFBF0CE),
      body: SafeArea(
        child: Column(
          children: [
            AppBarScreen(),
            SizedBox(height: 30),
            Uihelper.CustomText(
              text: 'Print Store',
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 32,
              fontFamily: 'bold',
            ),
            Uihelper.CustomText(
              text: 'Blinkit ensures secure prints at every stage',
              color: Color(0XFF9C9C9C),
              fontWeight: FontWeight.bold,
              fontSize: 14,
              fontFamily: 'bold',
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Container(
                height: 170,
                width: double.infinity,
                padding: EdgeInsets.all(13),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Uihelper.CustomText(
                          text: 'Documents',
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          fontFamily: 'bold',
                        ),
                        SizedBox(height: 5),
                        Row(
                          children: [
                            Uihelper.CustomText(
                              text: "✦",
                              color: Color(0XFF9C9C9C),
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                              fontFamily: 'bold',
                            ),
                            SizedBox(width: 12),
                            Uihelper.CustomText(
                              text: "Price starting at rs 3/page",
                              color: Color(0XFF9C9C9C),
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Uihelper.CustomText(
                              text: "✦",
                              color: Color(0XFF9C9C9C),
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                              fontFamily: 'bold',
                            ),
                            SizedBox(width: 12),
                            Uihelper.CustomText(
                              text: "Paper quality: 70 GSM",
                              color: Color(0XFF9C9C9C),
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Uihelper.CustomText(
                              text: "✦",
                              color: Color(0XFF9C9C9C),
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                              fontFamily: 'bold',
                            ),
                            SizedBox(width: 12),
                            Uihelper.CustomText(
                              text: "Single side prints",
                              color: Color(0XFF9C9C9C),
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                            ),
                          ],
                        ),
                        SizedBox(height: 13),
                        SizedBox(
                          height: 40,
                          width: 125,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              elevation: 0,
                              backgroundColor: Colors.green,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                            onPressed: () {},
                            child: Uihelper.CustomText(
                              text: "Upload Files",
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                              fontFamily: 'bold',
                            ),
                          ),
                        ),
                      ],
                    ),
                    Uihelper.CustomImage(img: 'image 62.png'),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
