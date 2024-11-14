import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:spotify/Themes/colors.dart';

class Screenlagu extends StatefulWidget {
  const Screenlagu({super.key});

  @override
  State<Screenlagu> createState() => _ScreenlaguState();
}

class _ScreenlaguState extends State<Screenlagu> {
  @override
  Widget header() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            GestureDetector(
              onVerticalDragDown: (details) {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.keyboard_arrow_down_sharp,
                size: 26,
                color: white,
              ),
            ),
            SizedBox(
              width: 92,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'PLAYING FROM YOUR LIBRARY',
                  style: numjudul,
                ),
                Text(
                  'Liked Songs',
                  style: subJudul,
                )
              ],
            ),
            Spacer(),
            Icon(
              Icons.more_vert_outlined,
              size: 19,
              color: white,
            )
          ],
        ),
        SizedBox(
          height: 112,
        ),
        Container(
          margin: EdgeInsets.only(bottom: 106),
          width: 364,
          height: 364,
          child: Image.asset(
            'assets/laguhome1.png',
            fit: BoxFit.cover,
          ),
        ),
      ],
    );
  }

  Widget body() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Nabi Palsu',
                  style: sublagu,
                ),
                Text(
                  'Single Hindia',
                  style: GoogleFonts.poppins(fontSize: 14, color: white),
                )
              ],
            ),
            Spacer(),
            Icon(
              Icons.favorite_border_outlined,
              size: 24,
              color: white,
            )
          ],
        )
      ],
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          colors: [
            Color(0xff737373),
            Color(0xff121212).withOpacity(0.8),
          ],
          stops: [0.0, 1.0],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        )),
        child: Padding(
          padding: const EdgeInsets.only(right: 29, left: 29, top: 52),
          child: Column(
            children: [header(), body()],
          ),
        ),
      ),
    );
  }
}
