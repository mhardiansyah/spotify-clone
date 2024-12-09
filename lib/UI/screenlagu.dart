import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:just_audio/just_audio.dart';
import 'package:spotify/Themes/colors.dart';

class Screenlagu extends StatefulWidget {
  final String image;
  final String title;
  final String artist;
  final String audioPath;

  const Screenlagu({
    super.key,
    required this.image,
    required this.title,
    required this.artist,
    required this.audioPath,
  });

  @override
  State<Screenlagu> createState() => _ScreenlaguState();
}

class _ScreenlaguState extends State<Screenlagu> {
  final AudioPlayer _audioPlayer = AudioPlayer();
  bool isFavorite = false;
  bool isPlay = false;

  void _togglePlay() async {
    setState(() {
      isPlay = !isPlay; // Ubah status play/pause
    });

    if (isPlay) {
      await _audioPlayer.play();
    } else {
      await _audioPlayer.pause();
    }
  }

  @override
  void initState() {
    super.initState();
    _initAudioPlayer();
  }

  Future<void> _initAudioPlayer() async {
    try {
      await _audioPlayer.setAsset(widget.audioPath);
    } catch (e) {
      print('Ada kesalahan saat memuat audio: $e');
    }
  }

  @override
  void dispose() {
    _audioPlayer.dispose();
    super.dispose();
  }

  Widget header() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.keyboard_arrow_down_sharp,
                size: 26,
                color: white,
              ),
            ),
            const SizedBox(
              width: 85,
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
        const SizedBox(height: 50),
        Container(
          margin: const EdgeInsets.only(bottom: 50),
          width: 364,
          height: 364,
          child: Image.asset(
            widget.image,
            fit: BoxFit.cover,
          ),
        ),
      ],
    );
  }

  Widget body() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.title,
                  style: sublagu,
                ),
                Text(
                  widget.artist,
                  style: GoogleFonts.poppins(fontSize: 14, color: white),
                ),
              ],
            ),
            const Spacer(),
            GestureDetector(
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                      content: Text(isFavorite
                          ? 'lagu ${widget.title} Dihapus dari favorit'
                          : 'lagu ${widget.title} berhasi di tambah  ke favorit')),
                );
                setState(() {
                  isFavorite = !isFavorite;
                });
              },
              child: Icon(
                isFavorite
                    ? Icons.favorite_rounded
                    : Icons.favorite_border_outlined,
                size: 24,
                color: isFavorite ? second : white,
              ),
            ),
          ],
        ),
        const SizedBox(height: 20),
        SliderTheme(
          data: SliderTheme.of(context).copyWith(trackHeight: 4),
          child: StreamBuilder<Duration>(
            stream: _audioPlayer.positionStream,
            builder: (context, snapshot) {
              final position = snapshot.data ?? Duration.zero;
              final duration = _audioPlayer.duration ?? Duration.zero;

              return Slider(
                value: position.inSeconds.toDouble(),
                min: 0.0,
                max: duration.inSeconds.toDouble(),
                activeColor: white,
                inactiveColor: whiteabu,
                onChanged: (value) async {
                  await _audioPlayer.seek(Duration(seconds: value.toInt()));
                },
              );
            },
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              _audioPlayer.position.toString().split('.')[0],
              style: GoogleFonts.poppins(fontSize: 12, color: white),
            ),
            Text(
              (_audioPlayer.duration ?? Duration.zero).toString().split('.')[0],
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
    );
  }

  @override
  Widget build(BuildContext context) {
    Color containerColor;
    if (widget.artist == 'Single Hindia') {
      containerColor = const Color(0xff737373);
    } else if (widget.artist == 'Single  charlie puth') {
      containerColor = const Color(0xffD0D957);
    } else if (widget.artist == 'Single  BoyswithUke') {
      containerColor = const Color(0xff4F7181);
    } else if (widget.artist == 'Single  Eminem') {
      containerColor = const Color(0xff2F62A5);
    } else if (widget.artist == 'Single Taylor swift') {
      containerColor = const Color(0xffC3B25D);
    } else if (widget.artist == 'Oasis') {
      containerColor = const Color(0xff628381);
    } else if (widget.artist == 'Feast') {
      containerColor = const Color(0xff6C6262);
    } else if (widget.artist == 'JKT48') {
      containerColor = const Color(0xff5ED5DA);
    } else {
      containerColor = const Color(0xff121212);
    }
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              containerColor,
              const Color(0xff121212).withOpacity(0.8),
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
