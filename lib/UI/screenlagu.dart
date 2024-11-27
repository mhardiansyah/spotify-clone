import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:spotify/Themes/colors.dart';

class Screenlagu extends StatefulWidget {
  const Screenlagu({super.key});

  @override
  State<Screenlagu> createState() => _ScreenlaguState();
}

class _ScreenlaguState extends State<Screenlagu> {
  bool isFavorite = false;
  bool isPlay = false;

  void _togglePlay() {
    setState(() {
      isPlay = !isPlay; // Ubah status play/pause
    });
  }

  Widget header() {
    return Column(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
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
                const SizedBox(
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
                    ),
                  ],
                ),
                const Spacer(),
                Icon(
                  Icons.more_vert_outlined,
                  size: 19,
                  color: white,
                ),
              ],
            ),
            const SizedBox(
              height: 112,
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 50),
              width: 364,
              height: 364,
              child: Image.asset(
                'assets/image/laguhome1.png',
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget body() {
    return GestureDetector(
      onTap: () {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Lagu berhasil ditambahkan ke favorit')),
        );
        setState(() {
          isFavorite = !isFavorite;
        });
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Rumah ke rumah',
                    style: sublagu,
                  ),
                  Text(
                    'Single Hindia',
                    style: GoogleFonts.poppins(fontSize: 14, color: white),
                  ),
                ],
              ),
              const Spacer(),
              Icon(
                isFavorite
                    ? Icons.favorite_rounded
                    : Icons.favorite_border_outlined,
                size: 24,
                color: isFavorite ? second : white,
              )
            ],
          ),
          const SizedBox(height: 20),
          SliderTheme(
            data: SliderTheme.of(context).copyWith(
              trackHeight: 4,
            ),
            child: Slider(
              value: 0.0,
              min: 0.0,
              max: 180.0,
              activeColor: white,
              inactiveColor: whiteabu,
              onChanged: (value) {
                // Fungsi untuk mengubah posisi slider (placeholder)
                setState(() {});
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '0:00',
                style: GoogleFonts.poppins(fontSize: 12, color: white),
              ),
              Text(
                '3:00',
                style: GoogleFonts.poppins(fontSize: 12, color: white),
              ),
            ],
          ),
          const SizedBox(height: 21),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.shuffle, size: 24, color: white),
              Icon(Icons.skip_previous, size: 32, color: white),
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: white,
                ),
                child: IconButton(
                  onPressed: _togglePlay,
                  icon: Icon(
                    isPlay ? Icons.pause : Icons.play_arrow,
                    color: Colors.black,
                  ),
                ),
              ),
              Icon(Icons.skip_next, size: 32, color: white),
              Icon(Icons.repeat, size: 24, color: white),
            ],
          ),
          const SizedBox(height: 28),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(Icons.devices, size: 24, color: white),
              const Spacer(),
              Icon(Icons.share_rounded, size: 24, color: white),
              const SizedBox(width: 38),
              Icon(Icons.queue_music_rounded, size: 24, color: white),
            ],
          ),
        ],
      ),
    );
  }

  @override
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
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(
            right: 29,
            left: 29,
            top: 52,
          ),
          child: Column(
            children: [
              header(),
              body(),
            ],
          ),
        ),
      ),
    );
  }
}
