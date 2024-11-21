import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:spotify/Themes/colors.dart';
import 'package:spotify/Themes/temalibary.dart';

class MyWidget extends StatefulWidget {
  final String image;
  final String nama_lagu;
  final String desc;
  final String icon_download;
  final String icon_download2;
  final String? icon_downloa3;

  const MyWidget(
      {super.key,
      required this.image,
      required this.nama_lagu,
      required this.desc,
      required this.icon_download,
      required this.icon_download2,
      this.icon_downloa3});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 376,
      height: 52,
      child: GestureDetector(
        onTap: () {
          ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                    content: Text('Lagu berhasil ditambahkan ke favorit')),
              );
              setState(() {
                isFavorite = !isFavorite;
              });
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              width: 13,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.nama_lagu,
                  style: judul_lagu2,
                ),
                Row(
                  children: [
                    Container(
                      color: whiteabu,
                      width: 33,
                      height: 10,
                      child: Text(
                        'LYRICS',
                        style: GoogleFonts.inter(
                            fontSize: 7.5,
                            fontWeight: FontWeight.w700,
                            color: Colors.black),
                      ),
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    Container(
                      color: whiteabu,
                      width: 33,
                      height: 10,
                      child: Text(
                        'E',
                        style: GoogleFonts.inter(
                            fontSize: 7.5,
                            fontWeight: FontWeight.w700,
                            color: Colors.black),
                      ),
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    Text(
                      widget.desc,
                      style: detail2,
                    ),
                  ],
                ),
              ],
            ),
                Icon(
                  isFavorite ? Icons.favorite : Icons.favorite_border,
                  color: isFavorite ? second : white,
                  size: 24,
                ),
                const SizedBox(width: 40,),
                Icon(Icons.more_vert, color: white, size: 24,)
          ],
        ),
      ),
    );
  }
}
