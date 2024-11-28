import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:spotify/Model/Model_more_dialog.dart';
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
                    // if (widget.icon_download != null &&
                    //     widget.icon_download!.isNotEmpty)
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
            const Spacer(),
            Icon(
              isFavorite ? Icons.favorite : Icons.favorite_border,
              color: isFavorite ? second : white,
              size: 24,
            ),
            const SizedBox(
              width: 8,
            ),
            GestureDetector(
              onTap: () {
                showModalBottomSheet(
                  context: context,
                  builder: (context) {
                    return Container(
                      height: 502,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: primaryColor,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10)),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                right: 19, left: 19, top: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ModelMoreDialog(
                                    image_lagu_more: widget.image_lagu,
                                    nama_lagu_more: widget.nama_lagu,
                                    desc_more: widget.desc,
                                    icon_download_more: widget.icon_download),
                              ],
                            ),
                          ),
                          Divider(
                            height: 25,
                            thickness: 2,
                            color: whiteabu,
                            endIndent: 0,
                            indent: 0,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              right: 19,
                              left: 19,
                              top: 15,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons
                                          .queue_music, // Ikon untuk "Add to Playlist"
                                      size: 22,
                                      color: white,
                                    ),
                                    SizedBox(width: 8),
                                    Text('Add to Playlist', style: mainJudul),
                                  ],
                                ),
                                const SizedBox(height: 22),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.queue, // Ikon untuk "Add to Queue"
                                      size: 22,
                                      color: white,
                                    ),
                                    SizedBox(width: 8),
                                    Text('Add to Queue', style: mainJudul),
                                  ],
                                ),
                                const SizedBox(height: 22),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.album, // Ikon untuk "View Album"
                                      size: 22,
                                      color: white,
                                    ),
                                    SizedBox(width: 8),
                                    Text('View Album', style: mainJudul),
                                  ],
                                ),
                                const SizedBox(height: 22),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.person, // Ikon untuk "View Artists"
                                      size: 22,
                                      color: white,
                                    ),
                                    SizedBox(width: 8),
                                    Text('View Artists', style: mainJudul),
                                  ],
                                ),
                                const SizedBox(height: 22),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.share, // Ikon untuk "Share"
                                      size: 22,
                                      color: white,
                                    ),
                                    SizedBox(width: 8),
                                    Text('Share', style: mainJudul),
                                  ],
                                ),
                                const SizedBox(height: 22),
                                Row(
                                  children: [
                                    Icon(
                                      Icons
                                          .radio, // Ikon untuk "Go to Song Radio"
                                      size: 22,
                                      color: white,
                                    ),
                                    SizedBox(width: 8),
                                    Text('Go to Song Radio', style: mainJudul),
                                  ],
                                ),
                                const SizedBox(height: 22),
                                Row(
                                  children: [
                                    Icon(
                                      Icons
                                          .info_outline, // Ikon untuk "Show Credits"
                                      size: 22,
                                      color: white,
                                    ),
                                    SizedBox(width: 8),
                                    Text('Show Credits', style: mainJudul),
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    );
                  },
                );
              },
              child: Icon(
                Icons.more_vert,
                color: white,
                size: 24,
              ),
            )
          ],
        ),
      ),
    );
  }
}

