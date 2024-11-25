import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:spotify/Themes/colors.dart';
import 'package:spotify/Themes/temalibary.dart';

class ModelLikesSonds extends StatefulWidget {
  final String image_lagu;
  final String nama_lagu;
  final String desc;
  final String icon_download;

  const ModelLikesSonds({
    super.key,
    required this.image_lagu,
    required this.nama_lagu,
    required this.desc,
    required this.icon_download,
  });

  @override
  State<ModelLikesSonds> createState() => _ModelLikesSondsState();
}

class _ModelLikesSondsState extends State<ModelLikesSonds> {
  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 17),
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
            Image.asset(widget.image_lagu, width: 52, height: 52),
            const SizedBox(
              width: 10,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.nama_lagu,
                  style: judul_lagu2,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    if (widget.icon_download != null &&
                        widget.icon_download!.isNotEmpty)
                      Image.asset(
                        widget.icon_download,
                      ),
                    const SizedBox(
                      width: 4,
                    ),
                    Container(
                      color: whiteabu,
                      width: 33,
                      height: 10,
                      child: Center(
                        child: Text(
                          'LYRICS',
                          style: GoogleFonts.inter(
                              fontSize: 7.5,
                              fontWeight: FontWeight.w700,
                              color: Colors.black),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    Container(
                      color: whiteabu,
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
            SizedBox(
              width: 4,
            ),
            Icon(
              isFavorite ? Icons.favorite : Icons.favorite_border,
              color: isFavorite ? second : white,
              size: 24,
            ),
            const SizedBox(
              width: 8,
            ),
            Icon(
              Icons.more_vert,
              color: white,
              size: 24,
            )
          ],
        ),
      ),
    );
  }
}
