import 'package:flutter/material.dart';
import 'package:spotify/Model/Model_search.dart';

class Testting extends StatelessWidget {
  const Testting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: modelsearch(
              image: 'assets/image/libary1.png',
              namalagu: 'Liked Songs',
              desc: 'Playlist . 266 songs',
            ),
          )
        ],
      ),
    );
  }
}
