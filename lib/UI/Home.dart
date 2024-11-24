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
  bool isFavorite = false;

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
        padding: const EdgeInsets.only(top: 60, left: 13, right: 13),
        width: double.infinity,
        height: 100,
        child: Row(
          children: [
            Text(
              'Good evening',
              style: judul,
            ),
            const Spacer(),
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
            const SizedBox(width: 30),
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
          margin: const EdgeInsets.only(bottom: 40),
          child: GridView.count(
            crossAxisCount: 2,
            crossAxisSpacing: 9,
            mainAxisSpacing: 9,
            shrinkWrap: true,
            childAspectRatio: 3 / 1,
            physics: NeverScrollableScrollPhysics(),
            children: [
              ModelRekomend(
                  imageRekomend: 'assets/image/rekomend1.png',
                  namaRekomend: 'Liked Songs'),
              ModelRekomend(
                  imageRekomend: 'assets/image/rekomend2.png',
                  namaRekomend: 'Emotional Songs'),
              ModelRekomend(
                  imageRekomend: 'assets/image/rekomend3.png',
                  namaRekomend: 'Origins/Deluxe'),
              ModelRekomend(
                  imageRekomend: 'assets/image/rekomend4.png',
                  namaRekomend: 'Augustten Ft Jhesy'),
              ModelRekomend(
                  imageRekomend: 'assets/image/rekomend5.png',
                  namaRekomend: 'A Place We Knew'),
              ModelRekomend(
                  imageRekomend: 'assets/image/rekomend6.png',
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
            const SizedBox(width: 12),
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
          margin: const EdgeInsets.only(bottom: 45),
          width: 380,
          height: 154,
          decoration: BoxDecoration(
            color: rekomend,
            borderRadius: BorderRadiusDirectional.circular(10),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset('assets/image/lagu1.png', fit: BoxFit.cover),
              const SizedBox(width: 18),
              Padding(
                padding: const EdgeInsets.only(top: 17, right: 16, bottom: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Hurtless (Acoustic)', style: numlagu),
                    Text(
                      'Single    Dean Lewis',
                      style: GoogleFonts.inter(fontSize: 11, color: whiteabu),
                    ),
                    const Spacer(),
                    GestureDetector(
                      onTap: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                              content:
                                  Text('Lagu berhasil ditambahkan ke favorit')),
                        );
                        setState(() {
                          isFavorite = !isFavorite;
                        });
                      },
                      child: Row(
                        children: [
                          Icon(
                            isFavorite
                                ? Icons.favorite_rounded
                                : Icons.favorite_border_outlined,
                            size: 24,
                            color: isFavorite ? second : white,
                          ),
                          SizedBox(width: 138),
                          CircleAvatar(
                            radius: 15,
                            child: Icon(Icons.play_arrow,
                                size: 23, color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Text('Discover something new', style: judul),
        const SizedBox(height: 19),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ModelHome(
                  imagehome: 'assets/image/laguhome4.png',
                  name:
                      'Your weekly mixtape of fresh\nmusic. Enjoy new music and d...',
                  desc: ''),
              SizedBox(width: 17),
              ModelHome(
                  imagehome: 'assets/image/laguhome1.png',
                  name: 'rumah ke rumah',
                  desc: 'Single Hindia'),
              SizedBox(width: 17),
              ModelHome(
                  imagehome: 'assets/image/laguhome2.png',
                  name: 'Numb Little Bug',
                  desc: 'Single Em Beihold'),
              SizedBox(width: 17),
              ModelHome(
                  imagehome: 'assets/image/laguhome3.png',
                  name: 'Evering Road (Deluxe)',
                  desc: 'Album Tom Grennan'),
              SizedBox(width: 17),
              ModelHome(
                  imagehome: 'assets/image/laguhome2.png',
                  name: 'Numb Little Bug',
                  desc: 'Single Em Beihold'),
              SizedBox(width: 17),
              ModelHome(
                  imagehome: 'assets/image/laguhome3.png',
                  name: 'Nabi palsu',
                  desc: 'Single   Hindia'),
              SizedBox(width: 17),
            ],
          ),
        ),
        const SizedBox(
          height: 40,
        ),
        Text('Just the hits', style: judul),
        const SizedBox(
          height: 20,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ModelHome(
                  imagehome: 'assets/image/just1.png',
                  name:
                      'Your weekly mixtape of fresh\nmusic. Enjoy new music and d...',
                  desc: ''),
              SizedBox(width: 17),
              ModelHome(
                  imagehome: 'assets/image/just2.png',
                  name: 'Numb Little Bug',
                  desc: 'Single   Em Beihold'),
              SizedBox(width: 17),
              ModelHome(
                  imagehome: 'assets/image/just3.png',
                  name: 'Evering Road (Deluxe)',
                  desc: 'Album Tom Grennan'),
              SizedBox(width: 17),
              ModelHome(
                  imagehome: 'assets/image/just2.png',
                  name: 'Numb Little Bug',
                  desc: 'Single Em Beihold'),
              SizedBox(width: 17),
              ModelHome(
                  imagehome: 'assets/image/just3.png',
                  name: 'Nabi palsu',
                  desc: 'Single   Hindia'),
              SizedBox(width: 17),
            ],
          ),
        ),
        const SizedBox(
          height: 40,
        ),
        Text('More of what you like', style: judul),
        const SizedBox(
          height: 20,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ModelHome(
                  imagehome: 'assets/image/more1.png',
                  name:
                      'Maverick City Music, Hillsong\nUNITED, Hillsong Worship, Bet...',
                  desc: ''),
              SizedBox(width: 17),
              ModelHome(
                  imagehome: 'assets/image/more2.png',
                  name:
                      'Ed Sheeran, Passenger, Justin\nBieber, Dean Lewis, Taylor Swift',
                  desc: ''),
              SizedBox(width: 17),
              ModelHome(
                  imagehome: 'assets/image/more3.png',
                  name:
                      'Yo-Yo Ma, Ludovico Einaudi,\nAlexis Ffrench, Daniel Hope, Yi...',
                  desc: ''),
              SizedBox(width: 17),
              ModelHome(
                  imagehome: 'assets/image/more2.png',
                  name:
                      'Ed Sheeran, Passenger, Justin\nBieber, Dean Lewis, Taylor Swift',
                  desc: ''),
              SizedBox(width: 17),
              ModelHome(
                  imagehome: 'assets/image/more3.png',
                  name:
                      'Yo-Yo Ma, Ludovico Einaudi,\nAlexis Ffrench, Daniel Hope, Yi...',
                  desc: ''),
              SizedBox(width: 17),
            ],
          ),
        ),
        const SizedBox(
          height: 40,
        ),
        Text('Your top mixes', style: judul),
        const SizedBox(
          height: 20,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ModelHome(
                  imagehome: 'assets/image/mix1.png',
                  name: 'Dean Lewis, Lord Huron, Sia and\nmore',
                  desc: ''),
              SizedBox(width: 17),
              ModelHome(
                  imagehome: 'assets/image/mix2.png',
                  name: 'Ed Sheeran, Marshmellow, Tall\nHeights and more',
                  desc: ''),
              SizedBox(width: 17),
              ModelHome(
                  imagehome: 'assets/image/mix3.png',
                  name: 'Imagine Dragons, Rihanna,\nJustin Bieber and more',
                  desc: ''),
              SizedBox(width: 17),
              ModelHome(
                  imagehome: 'assets/image/mix2.png',
                  name: 'Ed Sheeran, Marshmellow, Tall\nHeights and more',
                  desc: ''),
              SizedBox(width: 17),
              ModelHome(
                  imagehome: 'assets/image/mix3.png',
                  name: 'Imagine Dragons, Rihanna,\nJustin Bieber and more',
                  desc: ''),
              SizedBox(width: 17),
            ],
          ),
        ),
        const SizedBox(
          height: 40,
        ),
        Row(
          children: [
            CircleAvatar(
              radius: 20,
              child: Image.asset('assets/image/Pic.png'),
            ),
            SizedBox(
              width: 12,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'MORE LIKE',
                  style: GoogleFonts.poppins(
                      fontSize: 9,
                      fontWeight: FontWeight.w600,
                      color: whiteWithOpacity70),
                ),
                Text(
                  'Kodaline',
                  style: judul2,
                )
              ],
            )
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ModelHome(
                  imagehome: 'assets/image/1.png',
                  name:
                      'Ed Sheeran, Passenger, Drake,\nDean Lewis, Taylor Swift',
                  desc: ''),
              const SizedBox(width: 17),
              ModelHome(
                  imagehome: 'assets/image/2.png',
                  name: 'Harry Styles, Ed Sheeran,\nPassenger, Dean Lewis',
                  desc: ''),
              const SizedBox(width: 17),
              ModelHome(
                  imagehome: 'assets/image/2.png',
                  name:
                      'Ed Sheeran, Passenger, Drake,\nDean Lewis, Taylor Swift',
                  desc: ''),
              const SizedBox(width: 17),
              ModelHome(
                  imagehome: 'assets/image/1.png',
                  name: 'Harry Styles, Ed Sheeran,\nPassenger, Dean Lewis',
                  desc: ''),
              const SizedBox(width: 17),
              ModelHome(
                  imagehome: 'assets/image/2.png',
                  name:
                      'Ed Sheeran, Passenger, Drake,\nDean Lewis, Taylor Swift',
                  desc: ''),
              SizedBox(width: 17),
            ],
          ),
        ),
        SizedBox(
          height: 40,
        ),
        Text('Uniquely yours', style: judul),
        const SizedBox(
          height: 20,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ModelHome(
                  imagehome: 'assets/image/Uniquely1.png',
                  name: 'Songs you love right now',
                  desc: ''),
              const SizedBox(width: 17),
              ModelHome(
                  imagehome: 'assets/image/Uniquely2.png',
                  name:
                      'We made you a personalized\nplaylist with songs to take you ...',
                  desc: ''),
              const SizedBox(width: 17),
              ModelHome(
                  imagehome: 'assets/image/Uniquely1.png',
                  name: 'Your past favorites',
                  desc: ''),
              SizedBox(width: 17),
              ModelHome(
                  imagehome: 'assets/image/Uniquely2.png',
                  name:
                      'We made you a personalized\nplaylist with songs to take you ...',
                  desc: ''),
              SizedBox(width: 17),
              ModelHome(
                  imagehome: 'assets/image/Uniquely1.png',
                  name: 'Your past favorites',
                  desc: ''),
              SizedBox(width: 17),
            ],
          ),
        ),
        SizedBox(
          height: 40,
        ),
        Text('Jump back in', style: judul),
        SizedBox(
          height: 20,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ModelHome(
                  imagehome: 'assets/image/back1.png',
                  name: 'Hurry up, We’re Dreaming',
                  desc: 'Album . M83'),
              SizedBox(width: 17),
              ModelHome(
                  imagehome: 'assets/image/back2.png',
                  name: 'Chapters',
                  desc: 'Album . James TW'),
              SizedBox(width: 17),
              ModelHome(
                  imagehome: 'assets/image/back3.png',
                  name: 'Jess',
                  desc: 'Playlist . Jhesy'),
              SizedBox(width: 17),
              ModelHome(
                  imagehome: 'assets/image/back2.png',
                  name: 'Chapters',
                  desc: 'Album . James TW'),
              SizedBox(width: 17),
              ModelHome(
                  imagehome: 'assets/image/back3.png',
                  name: 'Jess',
                  desc: 'Playlist . Jhesy'),
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
