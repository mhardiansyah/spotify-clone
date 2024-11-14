// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'package:spotify/Model/Model_home.dart';
import 'package:spotify/Model/Model_rekomend.dart';
import 'package:spotify/Themes/colors.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Widget header() {
    return Positioned(
      left: 0,
      right: 0,
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          colors: [
            Color(0xff3B13B0),
            Color(0xff271363),
            Color(0xff1B1235),
            Color(0xff121212),
          ],
          stops: [0.0, 0.3, 0.63, 1.0],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        )),
        padding: EdgeInsets.only(top: 60, left: 13, right: 13),
        width: double.infinity,
        height: 100,
        child: Row(
          children: [
            Text(
              'Good evening',
              style: judul,
            ),
            Spacer(),
            Icon(
              Iconsax.notification,
              size: 20,
              color: white,
            ),
            SizedBox(width: 30),
            Icon(
              Icons.history_toggle_off,
              size: 20,
              color: white,
            ),
            SizedBox(width: 30),
            Icon(Iconsax.setting_2, size: 20, color: white),
          ],
        ),
      ),
    );
  }

  Widget body() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 100),
        Container(
          margin: EdgeInsets.only(bottom: 40),
          child: GridView.count(
            crossAxisCount: 2,
            crossAxisSpacing: 9,
            mainAxisSpacing: 9,
            shrinkWrap: true,
            childAspectRatio: 3 / 1,
            physics: NeverScrollableScrollPhysics(),
            children: [
              ModelRekomend(
                  imageRekomend: 'assets/rekomend1.png',
                  namaRekomend: 'Liked Songs'),
              ModelRekomend(
                  imageRekomend: 'assets/rekomend2.png',
                  namaRekomend: 'Emotional Songs'),
              ModelRekomend(
                  imageRekomend: 'assets/rekomend3.png',
                  namaRekomend: 'Origins/Deluxe'),
              ModelRekomend(
                  imageRekomend: 'assets/rekomend4.png',
                  namaRekomend: 'Augustten Ft Jhesy'),
              ModelRekomend(
                  imageRekomend: 'assets/rekomend5.png',
                  namaRekomend: 'A Place We Knew'),
              ModelRekomend(
                  imageRekomend: 'assets/rekomend6.png',
                  namaRekomend: '1000 Forms Of Fear'),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 32,
              backgroundImage: AssetImage('assets/avatar1.png'),
            ),
            SizedBox(width: 12),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'NEW RELEASE FROM',
                  style: GoogleFonts.poppins(fontSize: 9, color: white),
                ),
                SizedBox(height: 7),
                Text('Dean Lewis', style: judul),
              ],
            ),
          ],
        ),
        SizedBox(height: 18),
        Container(
          margin: EdgeInsets.only(bottom: 45),
          width: 380,
          height: 154,
          decoration: BoxDecoration(
            color: rekomend,
            borderRadius: BorderRadiusDirectional.circular(10),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset('assets/lagu1.png', fit: BoxFit.cover),
              SizedBox(width: 18),
              Padding(
                padding: EdgeInsets.only(top: 17, right: 16, bottom: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Hurtless (Acoustic)', style: numlagu),
                    Text(
                      'Single    Dean Lewis',
                      style: GoogleFonts.inter(fontSize: 11, color: whiteabu),
                    ),
                    Spacer(),
                    Row(
                      children: [
                        Icon(Icons.favorite_border_outlined,
                            size: 24, color: white),
                        SizedBox(width: 138),
                        CircleAvatar(
                          radius: 15,
                          child: Icon(Icons.play_arrow,
                              size: 23, color: Colors.black),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Text('Discover something new', style: judul),
        SizedBox(height: 19),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ModelHome(
                  imagehome: 'assets/laguhome1.png',
                  name: 'Nabi palsu',
                  desc: 'Single Hindia'),
              SizedBox(width: 17),
              ModelHome(
                  imagehome: 'assets/laguhome2.png',
                  name: 'Numb Little Bug',
                  desc: 'Single Em Beihold'),
              SizedBox(width: 17),
              ModelHome(
                  imagehome: 'assets/laguhome3.png',
                  name: 'Evering Road (Deluxe)',
                  desc: 'Album Tom Grennan'),
              SizedBox(width: 17),
              ModelHome(
                  imagehome: 'assets/laguhome2.png',
                  name: 'Numb Little Bug',
                  desc: 'Single Em Beihold'),
              SizedBox(width: 17),
              ModelHome(
                  imagehome: 'assets/laguhome3.png',
                  name: 'Nabi palsu',
                  desc: 'Single   Hindia'),
              SizedBox(width: 17),
            ],
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
              colors: [
                Color(0xff3B13B0),
                Color(0xff271363),
                Color(0xff1B1235),
                Color(0xff121212),
              ],
              stops: [
                0.0,
                0.3,
                0.63,
                1.0
              ], // Sesuaikan dengan posisi warna dari Figma
              begin: Alignment.topLeft,
              end: Alignment.center,
            )),
          ),
          Padding(
            padding: EdgeInsets.only(right: 17, left: 17),
            child: ListView(
              children: [
                body(),
              ],
            ),
          ),
          header(),
        ],
      ),
    );
  }
}
