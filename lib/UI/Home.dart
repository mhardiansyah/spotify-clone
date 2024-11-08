// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:spotify/Model/Model_rekomend.dart';
import 'package:spotify/Themes/colors.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget header() {
    return Row(
      children: [
        Text(
          'Good evining',
          style: judul,
        ),
        Spacer(),
        Icon(
          Iconsax.notification,
          size: 20,
          color: white,
        ),
        SizedBox(
          width: 30,
        ),
        Icon(
          Icons.history_toggle_off,
          size: 20,
          color: white,
        ),
        SizedBox(
          width: 30,
        ),
        Icon(Iconsax.setting_2, size: 20, color: white)
      ],
    );
  }

  Widget body() {
    return Column(
      children: [
        Container(
          
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
                namaRekomend: 'Liked Songs',
              ),
              ModelRekomend(
                imageRekomend: 'assets/rekomend1.png',
                namaRekomend: 'Liked Songs',
              ),
              ModelRekomend(
                imageRekomend: 'assets/rekomend1.png',
                namaRekomend: 'Liked Songs',
              ),
              ModelRekomend(
                imageRekomend: 'assets/rekomend1.png',
                namaRekomend: 'Liked Songs',
              ),
              ModelRekomend(
                imageRekomend: 'assets/rekomend1.png',
                namaRekomend: 'Liked Songs',
              ),
              ModelRekomend(
                imageRekomend: 'assets/rekomend1.png',
                namaRekomend: 'Liked Songs',
              ),
            ],
          ),
        )
      ],
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Padding(
        padding: EdgeInsets.only(right: 17, left: 17, top: 70),
        child: Column(
          children: [
            header(),
            body(),
          ],
        ),
      ),
    );
  }
}
