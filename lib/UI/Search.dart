// ignore_for_file: file_names, override_on_non_overriding_member, annotate_overrides, non_constant_identifier_names, prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:spotify/Themes/colors.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
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
    return Column(
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
              Image.asset('assets/Pop.png'),
              Image.asset('assets/gospel.png'),
              Image.asset('assets/Indie.png'),
              Image.asset('assets/Rock.png')
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
              Image.asset('assets/Podcasts.png'),
              Image.asset('assets/made.png'),
              Image.asset('assets/Charts.png'),
              Image.asset('assets/nr.png'),
              Image.asset('assets/Radio.png'),
              Image.asset('assets/Discover.png'),
              Image.asset('assets/le.png'),
              Image.asset('assets/Afro.png'),
              Image.asset('assets/hiphop.png'),
              Image.asset('assets/Rnb.png'),
              Image.asset('assets/Frequency.png'),
              Image.asset('assets/Soul.png'),
              Image.asset('assets/EQUAL.png'),
              Image.asset('assets/Alternative.png'),
              Image.asset('assets/Workout.png'),
              Image.asset('assets/Party.png'),
              Image.asset('assets/Focus.png'),
              Image.asset('assets/Experience EQUALS.png'),
              Image.asset('assets/Sleep.png'),
              Image.asset('assets/Decades.png'),
              Image.asset('assets/RADAR.png'),
              Image.asset('assets/Electronic.png')
            ],
          ),
        )
      ],
    );
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
