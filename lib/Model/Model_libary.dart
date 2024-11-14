import 'package:flutter/material.dart';
import 'package:spotify/Themes/temalibary.dart';

class ModelLibary extends StatelessWidget {
  final String imagelibary;
  final String namalibary;
  final String pemilik;

  const ModelLibary(
      {super.key,
      required this.imagelibary,
      required this.namalibary,
      required this.pemilik});

  @override
  Widget build(BuildContext context) {
    TextStyle containerstyle;
    if (namalibary == 'Liked Songs') {
      containerstyle = sub_Library;
    } else {
      containerstyle = sub_Library2;
    }

    return Container(
      width: 184,
      height: 226,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset(
            imagelibary,
            width: double.infinity,
          ),
          SizedBox(
            height: 13,
          ),
          Text(
            namalibary,
            style: containerstyle,
          ),
          Text(
            pemilik,
            style: detail_libary,
          )
        ],
      ),
    );
  }
}
