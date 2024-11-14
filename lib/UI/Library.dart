// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:spotify/Model/Model_libary.dart';
import 'package:spotify/Themes/colors.dart';
import 'package:spotify/Themes/temalibary.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Library extends StatefulWidget {
  const Library({super.key});

  @override
  State<Library> createState() => _LibraryState();
}

class _LibraryState extends State<Library> {
  @override
  Widget header() {
    return Positioned(
      top: 0,
      left: 0,
      right: 0,
      child: Container(
        width: double.infinity,
        height: 183,
        color: primaryColor,
        child: Column(
          children: [
            Padding(
              padding:
                  EdgeInsets.only(left: 17, right: 17, top: 76, bottom: 23),
              child: Row(
                children: [
                  Image.asset(
                    'assets/Profile Pic.png',
                    width: 35,
                    height: 35,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Your Library',
                    style: judul_Librar,
                  ),
                  Spacer(),
                  Icon(
                    Icons.search,
                    size: 22,
                    color: white,
                  ),
                  SizedBox(
                    width: 29,
                  ),
                  Icon(
                    Icons.add,
                    size: 22,
                    color: white,
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 2.5),
                    width: 80,
                    height: 34,
                    decoration: BoxDecoration(
                        border: Border.all(color: white),
                        borderRadius: BorderRadius.circular(50)),
                    child: Center(
                      child: Text(
                        'Playlists',
                        style: sub_Library2,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 2.5),
                    width: 80,
                    height: 34,
                    decoration: BoxDecoration(
                        border: Border.all(color: white),
                        borderRadius: BorderRadius.circular(50)),
                    child: Center(
                      child: Text(
                        'Albums',
                        style: sub_Library2,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 2.5),
                    width: 106,
                    height: 34,
                    decoration: BoxDecoration(
                        border: Border.all(color: white),
                        borderRadius: BorderRadius.circular(50)),
                    child: Center(
                      child: Text(
                        'Downloaded',
                        style: sub_Library2,
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget body() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 22,
        ),
        Row(
          children: [],
        ),
        
      ],
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Stack(
        children: [
          ListView(
            children: [
              Padding(
                padding: EdgeInsets.only(right: 16, left: 16),
                child: Column(
                  children: [body()],
                ),
              ),
            ],
          ),
          header()
        ],
      ),
    );
  }
}
