
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:spotify/Themes/colors.dart';
import 'package:spotify/Themes/temalibary.dart';

class ModelMoreDialog extends StatelessWidget {
  final String image_lagu_more;
  final String nama_lagu_more;
  final String desc_more;
  final String icon_download_more;

  const ModelMoreDialog({super.key, required this.image_lagu_more, required this.nama_lagu_more, required this.desc_more, required this.icon_download_more});

  
  

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
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(image_lagu_more, width: 52, height: 52),
            const SizedBox(
              width: 10,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  nama_lagu_more,
                  style: judul_lagu2,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    if (icon_download_more != null &&
                        icon_download_more!.isNotEmpty)
                      Image.asset(
                        icon_download_more,
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
                      desc_more,
                      style: detail2,
                    ),
                  ],
                ),
              ],
            ),
            const Spacer(),
           
            
            
          ],
        ),
      ),
    );
  }
}