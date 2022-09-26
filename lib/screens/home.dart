import 'package:flutter_application_4/components/category_card.dart';
import 'package:flutter_application_4/components/doctor_card.dart';
import 'package:flutter_application_4/components/search_bar.dart';
import 'package:flutter_application_4/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_4/screens/page1.dart';
import 'package:flutter_application_4/screens/page2.dart';
import 'package:flutter_application_4/screens/page3.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        bottom: false,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    SvgPicture.asset('assets/icons/menu.svg'),
                    SvgPicture.asset('assets/icons/profile.svg'),
                  ],
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Center(
                  child: Text(
                    ' أختــــر تخــصـــص الطبيــب \n  الذي يناسبـك ',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 32,
                      color: kTitleTextColor,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: SearchBar(),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Center(
                  child: Text(
                    'تخـصــصــــات الأطبــــاء',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: kTitleTextColor,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              buildCategoryList(),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Center(
                  child: Text(
                    'الاطــــــباء',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: kTitleTextColor,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              buildDoctorList(),
            ],
          ),
        ),
      ),
    );
  }

  buildCategoryList() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          SizedBox(
            width: 30,
          ),
          CategoryCard(
            'أخـــصائي\n أسنـــان',
            'assets/icons/dental_surgeon.png',
            kBlueColor,
            page1(),
          ),
          SizedBox(
            width: 10,
          ),
          CategoryCard('أخــــصائي \n قـــلب و دم',
              'assets/icons/heart_surgeon.png', kOrangeColor, page2()),
          SizedBox(
            width: 10,
          ),
          CategoryCard(
            'أخـــصائي\nعـــيون ',
            'assets/icons/eye_specialist.png',
            kgreencolor,
            page3(),
          ),
          SizedBox(
            width: 30,
          ),
        ],
      ),
    );
  }

  buildDoctorList() {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 30,
      ),
      child: Column(
        children: <Widget>[
          DoctorCard(
            'دكـــتور 1 ',
            'مـــــــواصات الطبيب',
            'assets/images/doctor1.png',
            kBlueColor,
          ),
          SizedBox(
            height: 20,
          ),
          DoctorCard(
            'دكـــتور 2 ',
            'مـــــــواصات الطبيب',
            'assets/images/doctor2.png',
            kYellowColor,
          ),
          SizedBox(
            height: 20,
          ),
          DoctorCard(
            'دكـــتور 3 ',
            'مـــــــواصات الطبيب',
            'assets/images/doctor3.png',
            kOrangeColor,
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
