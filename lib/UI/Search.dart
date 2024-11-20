// ignore_for_file: file_names, override_on_non_overriding_member, annotate_overrides, non_constant_identifier_names, prefer_const_constructors, avoid_unnecessary_containers

import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:spotify/Model/Model_search.dart';
import 'package:spotify/Themes/colors.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  List<modelsearch> productlagu = [
    modelsearch(
      image: 'assets/image/libary1.png',
      namalagu: 'Liked Songs',
      desc: 'Playlist . 266 songs',
    ),
    modelsearch(
      image: 'assets/image/libary2.png',
      namalagu: 'Emotional Songs',
      desc: 'Playlist . 266 songs',
    ),
    modelsearch(
      image: 'assets/image/libary3.png',
      namalagu: 'Augustten Ft Jhesy 😇',
      desc: 'Playlist . 266 songs',
    ),
    modelsearch(
      image: 'assets/image/libary4.png',
      namalagu: 'All the Little Lights (Deluxe Version)',
      desc: 'Playlist . 266 songs',
    ),
    modelsearch(
      image: 'assets/image/libary5.png',
      namalagu: 'A Place We Knew',
      desc: 'Playlist . 266 songs',
    ),
    modelsearch(
      image: 'assets/image/libary6.png',
      namalagu: 'Whispers',
      desc: 'Playlist . 266 songs',
    ),
    modelsearch(
      image: 'assets/image/libary7.png',
      namalagu: 'Night Visions',
      desc: 'Playlist . 266 songs',
    ),
  ];

  List<modelsearch> displaymodels = [];
  String searchText = '';

  @override
  void initState() {
    super.initState();
    displaymodels = productlagu;
  }

  void upadateList(String value) {
    setState(() {
      searchText = value;
      if (searchText.isEmpty) {
        displaymodels = productlagu;
      } else {
        displaymodels = productlagu
            .where((product) =>
                product.namalagu.toLowerCase().contains(value.toLowerCase()))
            .toList();
      }
    });
  }

  Widget Header() {
    return Positioned(
      left: 0,
      right: 0,
      child: Container(
        height: 180,
        color: primaryColor,
        padding: EdgeInsets.only(left: 17, right: 17, top: 70),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Search', style: judul),
            SizedBox(height: 23),
            TextField(
              onChanged: (value) => upadateList(value),
              decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  prefixIcon: Icon(Icons.search),
                  hintText: 'Artists, songs, or podcasts'),
            ),
          ],
        ),
      ),
    );
  }

  Widget Body() {
    if (searchText.isEmpty) {
      return SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Your top genres', style: mainJudul),
            SizedBox(height: 11),
            Container(
              margin: EdgeInsets.only(bottom: 26),
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 16,
                mainAxisSpacing: 6,
                shrinkWrap: true,
                childAspectRatio: 3 / 2,
                physics: NeverScrollableScrollPhysics(),
                children: [
                  Image.asset('assets/image/Pop.png'),
                  Image.asset('assets/image/gospel.png'),
                  Image.asset('assets/image/Indie.png'),
                  Image.asset('assets/image/Rock.png'),
                ],
              ),
            ),
            Text('Browse all', style: mainJudul),
            SizedBox(height: 11),
            Container(
              margin: EdgeInsets.only(bottom: 26),
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 16,
                mainAxisSpacing: 6,
                shrinkWrap: true,
                childAspectRatio: 3 / 2,
                physics: NeverScrollableScrollPhysics(),
                children: [
                  Image.asset('assets/image/Podcasts.png'),
                  Image.asset('assets/image/made.png'),
                  Image.asset('assets/image/Charts.png'),
                  Image.asset('assets/image/nr.png'),
                  Image.asset('assets/image/Radio.png'),
                  Image.asset('assets/image/Discover.png'),
                  Image.asset('assets/image/le.png'),
                  Image.asset('assets/image/Afro.png'),
                  Image.asset('assets/image/hiphop.png'),
                  Image.asset('assets/image/Rnb.png'),
                  Image.asset('assets/image/Frequency.png'),
                  Image.asset('assets/image/Soul.png'),
                  Image.asset('assets/image/EQUAL.png'),
                  Image.asset('assets/image/Alternative.png'),
                  Image.asset('assets/image/Workout.png'),
                  Image.asset('assets/image/Party.png'),
                  Image.asset('assets/image/Focus.png'),
                  Image.asset('assets/image/Experience EQUALS.png'),
                  Image.asset('assets/image/Sleep.png'),
                  Image.asset('assets/image/Decades.png'),
                  Image.asset('assets/image/RADAR.png'),
                  Image.asset('assets/image/Electronic.png'),
                ],
              ),
            ),
          ],
        ),
      );
    } else {
      return Column(
        children: displaymodels.map((product) {
          return Column(
            children: [
              product,
            ],
          );
        }).toList(),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Stack(
        children: [
          ListView(
            children: [
              Padding(
                padding: EdgeInsets.only(right: 17, left: 17, top: 70),
                child: Column(
                  children: [
                    SizedBox(height: 100),
                    Body(),
                  ],
                ),
              ),
            ],
          ),
          Header(),
        ],
      ),
    );
  }
}
