import 'package:blinkit/repository/screens/bottomnav/bottom_nav_screen.dart';
import 'package:blinkit/repository/widgets/uihelper.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            child: Uihelper.CustomImage(img: 'Blinkit Onboarding Screen.png'),
          ),
          Uihelper.CustomImage(img: 'blinkit.png'),
          Uihelper.CustomText(
            text: 'India’s last minute app',
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 20,
            fontFamily: 'bold',
          ),
          SizedBox(height: 8),
          Center(
            child: Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Container(
                width: 350,
                padding: EdgeInsets.all(8.0),
                height: 200,
                decoration: BoxDecoration(
                  // shape:
                ),
                child: Column(
                  children: [
                    SizedBox(height: 10),
                    Uihelper.CustomText(
                      text: 'Muhammad rabbi',
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                      fontSize: 15,
                    ),
                    Uihelper.CustomText(
                      text: '774672XXX',
                      color: Color(0XFF9C9C9C),
                      fontWeight: FontWeight.bold,
                      fontFamily: 'bold',
                      fontSize: 16,
                    ),
                    SizedBox(height: 5),
                    SizedBox(
                      height: 48,
                      width: double.infinity,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          elevation: 0,
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => BottomNavScreen(),
                            ),
                          );
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Uihelper.CustomText(
                              text: 'Login with',
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),
                            SizedBox(width: 8),
                            Uihelper.CustomImage(img: 'zomato.png'),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 5),
                    Uihelper.CustomText(
                      text:
                          'Access your saved addresses from Zomato automatically!',
                      color: Color(0XFF9C9C9C),
                      fontWeight: FontWeight.w400,
                      fontSize: 10,
                    ),
                    SizedBox(height: 10),
                    Uihelper.CustomText(
                      text: 'or login with phone number',
                      color: Color(0XFF269237),
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}
