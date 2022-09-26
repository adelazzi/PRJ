import 'package:flutter_application_4/constant.dart';
import 'package:flutter_application_4/screens/page1.dart';
import 'package:flutter/material.dart';

class DoctorCard extends StatelessWidget {
  var _name;
  var _description;
  var _imageUrl;
  var _bgColor;

  DoctorCard(this._name, this._description, this._imageUrl, this._bgColor);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: _bgColor.withOpacity(0.1),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: EdgeInsets.all(10),
          child: ListTile(
            leading: Image.asset(_imageUrl),
            title: Center(
              child: Text(
                _name,
                style: TextStyle(
                  color: kTitleTextColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            subtitle: Center(
              child: Text(
                _description,
                style: TextStyle(
                  color: kTitleTextColor.withOpacity(0.7),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
