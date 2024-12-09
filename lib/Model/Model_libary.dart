import 'package:flutter/material.dart';
import 'package:spotify/Themes/colors.dart';
import 'package:spotify/Themes/temalibary.dart';
import 'package:spotify/UI/like_song.dart';

class ModelLibary extends StatelessWidget {
  final String imagelibary;
  final String namalibary;
  final String? pemilik;

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

    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(_dillvose());
      },
      child: Container(
        width: 184,
        height: 246,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
            if (pemilik != null && pemilik!.isNotEmpty)
              Text(
                pemilik!,
                style: detail_libary,
              )
          ],
        ),
      ),
    );
  }
}

Route _dillvose() {
  return PageRouteBuilder(
      pageBuilder: (context, animation, seconds) => LikeSong(),
      transitionsBuilder: (context, animation, seconds, child) {
        return FadeTransition(
          opacity: animation,
          child: child,
        );
      });
}
