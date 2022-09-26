import 'package:flutter_application_4/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_application_4/components/doctor_card.dart';

//toothpage
class page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kptooth,
        body: NestedScrollView(
            floatHeaderSlivers: true,
            headerSliverBuilder: (context, innerBoxIsScrolled) => [
                  SliverAppBar(
                      backgroundColor: kptooth,
                      leading: BackButton(),
                      expandedHeight: 240,
                      floating: true,
                      pinned: true,
                      snap: true,
                      flexibleSpace: FlexibleSpaceBar(
                        background: Image.asset("assets/images/tooth.jpg",
                            fit: BoxFit.cover),
                        title: Center(child: Text('أخــــصائي أسنان')),
                      )),
                ],
            body: ListView.separated(
              itemBuilder: (context, index) => buildDoctorList,
              separatorBuilder: (context, index) => buildDoctorList,
              itemCount: 1,
            )));
  }

  get buildDoctorList {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 30,
      ),
      child: Column(
        children: <Widget>[
          DoctorCard(
            'دكـــتور 1',
            'مـــــــواصات الطبيب',
            'assets/images/doctor1.png',
            kBlueColor,
          ),
          SizedBox(
            height: 20,
          ),
          DoctorCard(
            'دكـــتور 2',
            'مـــــــواصات الطبيب',
            'assets/images/doctor2.png',
            kYellowColor,
          ),
          SizedBox(
            height: 20,
          ),
          DoctorCard(
            'دكـــتور 3',
            'مـــــــواصات الطبيب',
            'assets/images/doctor3.png',
            kOrangeColor,
          ),
          SizedBox(
            height: 20,
          ),
          DoctorCard(
            'دكـــتور 4',
            'مـــــــواصات الطبيب',
            'assets/images/doctor2.png',
            kYellowColor,
          ),
          SizedBox(
            height: 20,
          ),
          DoctorCard(
            'دكـــتور 5',
            'مـــــــواصات الطبيب',
            'assets/images/doctor2.png',
            kYellowColor,
          ),
          SizedBox(
            height: 20,
          ),
          DoctorCard(
            'دكـــتور 6',
            'مـــــــواصات الطبيب',
            'assets/images/doctor2.png',
            kYellowColor,
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
