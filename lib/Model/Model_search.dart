import 'package:flutter/material.dart';
import 'package:spotify/Themes/colors.dart';
import 'package:spotify/Themes/temalibary.dart';

class modelsearch extends StatelessWidget {
  final String image;
  final String namalagu;
  final String desc;
  // final String? icon1;
  // final String? icon2;

  const modelsearch({
    super.key,
    required this.image,
    required this.namalagu,
    required this.desc,
  });

  @override
  Widget build(BuildContext context) {
    TextStyle containerstyle;
    if (namalagu == 'Liked Songs') {
      containerstyle = judul_lagu;
    } else {
      containerstyle = judul_lagu2;
    }
    return Container(
      margin: const EdgeInsets.only(bottom: 17),
      width: 377,
      height: 68,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset(
            image,
            width: 68,
            height: 68,
          ),
          SizedBox(
            width: 13,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                namalagu,
                style: judul_lagu2,
              ),
              Text(
                desc,
                style: sub_Library2,
              )
            ],
          )
        ],
      ),
    );
  }
}
