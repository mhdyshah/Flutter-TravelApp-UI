// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:travell_app/models/destination.dart';
import 'package:travell_app/utils/constants.dart';

class TopDestinationItem extends StatelessWidget {
  final Destination details;
  const TopDestinationItem({Key? key, required this.details}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 2),
      padding: EdgeInsets.only(right: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: kPrimaryColor,
        boxShadow: [
          BoxShadow(
            offset: Offset(-2, -2),
            color: Colors.white70,
          ),
          BoxShadow(
            offset: Offset(2, 2),
            color: kSecondaryColor.withOpacity(0.2),
          ),
        ],
      ),
      child: Row(
        children: [
          _image(),
          SizedBox(width: 16),
          _text(),
        ],
      ),
    );
  }

  Widget _image() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(25),
      child: Image.asset(
        details.image,
        width: 90,
        height: 90,
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _text() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          details.city,
          style: TextStyle(
            color: kSecondaryColor,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          details.country,
          style: TextStyle(
            color: kSecondaryColor.withOpacity(0.6),
          ),
        ),
      ],
    );
  }
}
