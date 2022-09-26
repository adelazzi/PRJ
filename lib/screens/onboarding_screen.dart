import 'package:flutter_application_4/constant.dart';
import 'package:flutter_application_4/screens/home.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: <Widget>[
            Align(
              alignment: Alignment.bottomCenter,
              child: Image.asset(
                'assets/images/onboarding_illustration.jpg',
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.fitWidth,
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height / 6,
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width / 8,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Center(
                      child: Text(
                        'اختر الطبيب\nالــذي يلائـــمــك',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 32,
                          color: kTitleTextColor,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: Text(
                        'صار بإمكانك الان ان تجد الطبيب \nالمناسب لحالتك و الحجز من المنزل',
                        style: TextStyle(
                          fontSize: 16,
                          color: kgreencolor.withOpacity(0.7),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 70,
                    ),
                    Center(
                      child: MaterialButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HomeScreen(),
                            ),
                          );
                        },
                        color: kOrangeColor,
                        padding: EdgeInsets.symmetric(
                          horizontal: 30,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text(
                          'إبـــــدأ',
                          style: TextStyle(
                            color: kWhiteColor,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
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
