// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:spotify/Model/Model_libary.dart';
import 'package:spotify/Themes/colors.dart';
import 'package:spotify/Themes/temalibary.dart';

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
          height: 180,
        ),
        Row(
          children: [
            Icon(
              Icons.swap_vert,
              size: 15,
              color: white,
            ),
            SizedBox(
              width: 14,
            ),
            Text(
              'Most recent',
              style: sub_Library2,
            ),
            Spacer(),
            Icon(Icons.list, size: 15, color: white),
          ],
        ),
        SizedBox(
          height: 15,
        ),
        Container(
          child: GridView.count(
            crossAxisCount: 2,
            crossAxisSpacing: 14,
            mainAxisSpacing: 32,
            shrinkWrap: true,
            childAspectRatio: 3 / 4,
            physics: NeverScrollableScrollPhysics(),
            children: [
              ModelLibary(
                  imagelibary: 'assets/image/libary1.png',
                  namalibary: 'Liked Songs',
                  pemilik: 'Playlist .266 songs'),
              ModelLibary(
                  imagelibary: 'assets/image/libary2.png',
                  namalibary: 'Emotional Songs',
                  pemilik: 'Playlist .Jhesy'),
              ModelLibary(
                  imagelibary: 'assets/image/libary3.png',
                  namalibary: 'Augustten Ft Jhesy 😇',
                  pemilik: 'Playlist .Augustten'),
              ModelLibary(
                  imagelibary: 'assets/image/libary4.png',
                  namalibary: 'All the Little Lights ',
                  pemilik: 'Album .Passenger'),
              ModelLibary(
                  imagelibary: 'assets/image/libary5.png',
                  namalibary: 'A Place We Knew',
                  pemilik: 'Album .Dean Lewis'),
              ModelLibary(
                  imagelibary: 'assets/image/libary6.png',
                  namalibary: 'Whispers',
                  pemilik: 'Album .Passenger'),
              ModelLibary(
                  imagelibary: 'assets/image/libary7.png',
                  namalibary: 'Night Visions',
                  pemilik: 'Album .Imagine Dragons'),
              ModelLibary(
                  imagelibary: 'assets/image/libary8.png',
                  namalibary: 'Origins (Deluxe)',
                  pemilik: 'Album .Imagine Dragons'),
              ModelLibary(
                  imagelibary: 'assets/image/libary9.png',
                  namalibary: 'Evolve',
                  pemilik: 'Album .Imagine Dragons'),
              ModelLibary(
                  imagelibary: 'assets/image/libary10.png',
                  namalibary: 'Wonder',
                  pemilik: 'Album .Hillsong UNITED'),
              ModelLibary(
                  imagelibary: 'assets/image/libary11.png',
                  namalibary: '1000 Forms Of Fear',
                  pemilik: 'Album .Sia'),
              ModelLibary(
                  imagelibary: 'assets/image/libary12.png',
                  namalibary: 'Cry Forever',
                  pemilik: 'Album .Amy Shark'),
              ModelLibary(
                  imagelibary: 'assets/image/libary13.png',
                  namalibary: 'ROOTS',
                  pemilik: 'Album .The Cavemen'),
              ModelLibary(
                  imagelibary: 'assets/image/addlibary1.png',
                  namalibary: '                    Add artists',
                  pemilik: ''),
              ModelLibary(
                  imagelibary: 'assets/image/addlibary2.png',
                  namalibary: 'Add podcasts & shows',
                  pemilik: ''),
            ],
          ),
        )
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
