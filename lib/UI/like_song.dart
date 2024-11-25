import 'package:flutter/material.dart';
import 'package:spotify/Model/Model_Likes_sonds.dart';
import 'package:spotify/Themes/colors.dart';

class LikeSong extends StatefulWidget {
  const LikeSong({super.key});

  @override
  State<LikeSong> createState() => _LikeSongState();
}

class _LikeSongState extends State<LikeSong> {
  @override
  // ignore: override_on_non_overriding_member
  Widget header() {
    return Container(
      padding: const EdgeInsets.only(left: 17, right: 17, top: 58),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back,
              size: 24,
              color: white,
            ),
          ),
          SizedBox(
            height: 22,
          ),
          Row(
            children: [
              Container(
                width: 310,
                height: 38,
                child: TextFormField(
                  decoration: InputDecoration(
                    fillColor: Colors.white.withOpacity(0.1),
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide.none,
                    ),
                    prefixIcon: Icon(Icons.search, size: 14, color: white),
                    hintText: 'Artists, songs, or podcasts',
                    hintStyle: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.w700,
                        color: white),
                  ),
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              Container(
                width: 56,
                height: 38,
                decoration: BoxDecoration(
                  color: white.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Sort',
                    style: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.w700,
                        color: white),
                  ),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 100,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Liked Songs',
                style: judul,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                '266 songs',
                style: detail2,
              ),
              const SizedBox(
                height: 11,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/Downloaded2.png',
                    width: 24,
                    height: 24,
                  ),
                  Container(
                    width: 56,
                    height: 56,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color:
                          second, // Gantilah ini dengan warna sesuai tema Anda
                    ),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        IconButton(
                          icon: Icon(
                            Icons.play_arrow,
                            color: Colors.black,
                            size: 40,
                          ),
                          onPressed: () {},
                        ),
                        Positioned(
                          bottom: 0,
                          right: 0,
                          child: Container(
                            width: 24,
                            height: 24,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.black,
                            ),
                            child: Center(
                              child: Icon(
                                Icons.shuffle,
                                color: second,
                                size: 16,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 38,
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget body() {
    return Expanded(
      child: ListView(
        children: [
          Column(
            children: [
              ModelLikesSonds(
                  image_lagu: 'assets/image/likeSong2.png',
                  nama_lagu: 'Pretty Girl - Cheat Codes X CADE ...',
                  desc: 'Maggie Lindermann, Cheat Cod...',
                  icon_download: 'assets/Downloaded3.png'),
              ModelLikesSonds(
                  image_lagu: 'assets/image/likeSong3.png',
                  nama_lagu: 'Pretty Girl - Cheat Codes X CADE ...',
                  desc: 'Maggie Lindermann, Cheat Cod...',
                  icon_download: 'assets/Downloaded3.png'),
              ModelLikesSonds(
                  image_lagu: 'assets/image/likeSong4.png',
                  nama_lagu: 'Pretty Girl - Cheat Codes X CADE ...',
                  desc: 'Maggie Lindermann, Cheat Cod...',
                  icon_download: 'assets/Downloaded3.png'),
              ModelLikesSonds(
                  image_lagu: 'assets/image/likeSong5.png',
                  nama_lagu: 'Pretty Girl - Cheat Codes X CADE ...',
                  desc: 'Maggie Lindermann, Cheat Cod...',
                  icon_download: 'assets/Downloaded3.png'),
              ModelLikesSonds(
                  image_lagu: 'assets/image/likeSong6.png',
                  nama_lagu: 'Pretty Girl - Cheat Codes X CADE ...',
                  desc: 'Maggie Lindermann, Cheat Cod...',
                  icon_download: 'assets/Downloaded3.png'),
              ModelLikesSonds(
                  image_lagu: 'assets/image/likeSong7.png',
                  nama_lagu: 'Pretty Girl - Cheat Codes X CADE ...',
                  desc: 'Maggie Lindermann, Cheat Cod...',
                  icon_download: 'assets/Downloaded3.png'),
              ModelLikesSonds(
                  image_lagu: 'assets/image/likeSong8.png',
                  nama_lagu: 'Pretty Girl - Cheat Codes X CADE ...',
                  desc: 'Maggie Lindermann, Cheat Cod...',
                  icon_download: 'assets/Downloaded3.png'),
              ModelLikesSonds(
                  image_lagu: 'assets/image/likeSong9.png',
                  nama_lagu: 'Pretty Girl - Cheat Codes X CADE ...',
                  desc: 'Maggie Lindermann, Cheat Cod...',
                  icon_download: 'assets/Downloaded3.png'),
              ModelLikesSonds(
                  image_lagu: 'assets/image/likeSong10.png',
                  nama_lagu: 'Pretty Girl - Cheat Codes X CADE ...',
                  desc: 'Maggie Lindermann, Cheat Cod...',
                  icon_download: 'assets/Downloaded3.png'),
              ModelLikesSonds(
                  image_lagu: 'assets/image/likeSong11.png',
                  nama_lagu: 'Pretty Girl - Cheat Codes X CADE ...',
                  desc: 'Maggie Lindermann, Cheat Cod...',
                  icon_download: 'assets/Downloaded3.png'),
              ModelLikesSonds(
                  image_lagu: 'assets/image/likeSong12.png',
                  nama_lagu: 'Pretty Girl - Cheat Codes X CADE ...',
                  desc: 'Maggie Lindermann, Cheat Cod...',
                  icon_download: 'assets/Downloaded3.png'),
              ModelLikesSonds(
                  image_lagu: 'assets/image/likeSong13.png',
                  nama_lagu: 'Pretty Girl - Cheat Codes X CADE ...',
                  desc: 'Maggie Lindermann, Cheat Cod...',
                  icon_download: 'assets/Downloaded3.png'),
              ModelLikesSonds(
                  image_lagu: 'assets/image/likeSong14.png',
                  nama_lagu: 'Pretty Girl - Cheat Codes X CADE ...',
                  desc: 'Maggie Lindermann, Cheat Cod...',
                  icon_download: 'assets/Downloaded3.png'),
            ],
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Container(
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
          begin: Alignment.topCenter,
          end: Alignment.center,
        )),
        child: Column(
          children: [header(), body()],
        ),
      ),
    );
  }
}
