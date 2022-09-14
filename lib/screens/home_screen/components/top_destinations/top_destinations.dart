// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:travell_app/mocks/mock_top_destinations.dart';
import 'package:travell_app/screens/home_screen/components/top_destinations/destination_item.dart';
import 'package:travell_app/utils/constants.dart';

class TopDestinations extends StatelessWidget {
  final double padding;
  final double spacing;
  const TopDestinations(
      {Key? key, required this.padding, required this.spacing})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: padding),
          child: Text(
            "Top Destinations",
            style: TextStyle(
              color: kSecondaryColor,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(height: 16),
        SizedBox(
          height: 94,
          child: ListView.separated(
            padding: EdgeInsets.symmetric(horizontal: padding),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => TopDestinationItem(
              details: MockTopDestinations.data[index],
            ),
            separatorBuilder: (context, index) => SizedBox(width: spacing),
            itemCount: MockTopDestinations.data.length,
          ),
        ),
      ],
    );
  }
}
