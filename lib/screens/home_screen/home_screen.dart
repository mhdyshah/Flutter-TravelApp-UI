// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:travell_app/mocks/mock_top_destinations.dart';
import 'package:travell_app/screens/home_screen/components/top_destinations/top_destinations.dart';
import 'package:travell_app/utils/constants.dart';

import 'components/all_destinations/all_destinations.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 52),
            _appBar(),
            SizedBox(height: 24),
            _header(),
            SizedBox(height: 24),
            _searchBar(),
            SizedBox(height: 36),
            _categories(),
            SizedBox(height: 16),
            AllDestinations(
              padding: 24.0,
              spacing: 24.0,
            ),
            SizedBox(height: 36),
            TopDestinations(
              padding: 24.0,
              spacing: 24.0,
            ),
            SizedBox(height: 25),
          ],
        ),
      ),
    );
  }

  Widget _appBar() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {},
            child: Icon(
              FontAwesomeIcons.barsStaggered,
              color: kSecondaryColor,
              size: 24,
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Icon(
              FontAwesomeIcons.bell,
              color: kSecondaryColor,
              size: 24,
            ),
          ),
        ],
      ),
    );
  }

  Widget _header() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Descover",
            style: TextStyle(
              color: kSecondaryColor,
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 4),
          Text(
            "Explore best places in the world!",
            style: TextStyle(
              color: kSecondaryColor.withOpacity(0.6),
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }

  Widget _searchBar() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: TextField(
        cursorColor: Color(0xFF5F67EA),
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide(width: 0, style: BorderStyle.none),
          ),
          contentPadding: EdgeInsets.symmetric(
            vertical: 0,
            horizontal: 20,
          ),
          prefixIcon: Icon(
            Icons.search_outlined,
            color: kSecondaryColor.withOpacity(0.6),
            size: 26,
          ),
          hintText: "Search Your Trip",
          hintStyle: TextStyle(color: kSecondaryColor.withOpacity(0.6)),
          fillColor: kSecondaryColor.withOpacity(0.2),
          filled: true,
        ),
      ),
    );
  }

  Widget _categories() {
    final categoryList = ["America", "Europe", "Asia", "Oceania"];
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
              Text(
                "All",
                style: TextStyle(
                  color: kSecondaryColor,
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 2),
              Container(
                width: 4,
                height: 4,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: kSecondaryColor,
                ),
              ),
            ],
          ),
          for (final category in categoryList)
            Text(
              category,
              style: TextStyle(
                color: kSecondaryColor.withOpacity(0.6),
                fontSize: 16,
              ),
            ),
        ],
      ),
    );
  }
}
