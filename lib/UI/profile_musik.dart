// ignore_for_file: prefer_const_constructors, camel_case_types

import 'package:flutter/material.dart';
import 'package:spotify/Themes/colors.dart';

class profile extends StatefulWidget {
  const profile({super.key});

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  Widget Header() {
    return Padding(
      padding: const EdgeInsets.only(top: 125),
      child: Center(
        child: Column(children: [
          Image.asset('assets/Code.png', width: 162, height: 202),
          SizedBox(height: 14),
          Text('Pretty Girl - Cheat Codes X CADE Remix', style: numlogin),
          SizedBox(height: 12),
          Text('Maggie Lindermann', style: subJudul),
        ]),
      ),
    );
  }

  Widget Body() {
    return Padding(
      padding: const EdgeInsets.only(right: 26, left: 26),
      child: Column(children: [
        Row(
          children: [
            Image.asset(
              'assets/Liked.png',
              width: 24,
              height: 22,
            ),
            SizedBox(width: 8),
            Text('Liked', style: mainJudul),
          ],
        ),
        SizedBox(height: 32),
        Row(
          children: [
            Image.asset(
              'assets/image/profile.png',
              width: 21,
              height: 22,
            ),
            SizedBox(width: 8),
            Text('Add to Playlist', style: mainJudul),
          ],
        ),
        SizedBox(height: 32),
        Row(
          children: [
            Image.asset(
              'assets/addque.png',
              width: 21,
              height: 22,
            ),
            SizedBox(width: 8),
            Text('Add to Queue', style: mainJudul),
          ],
        ),
        SizedBox(height: 32),
        Row(
          children: [
            Image.asset(
              'assets/viealbum.png',
              width: 21,
              height: 22,
            ),
            SizedBox(width: 8),
            Text('View Album', style: mainJudul),
          ],
        ),
        SizedBox(height: 32),
        Row(
          children: [
            Image.asset(
              'assets/vieartis.png',
              width: 21,
              height: 22,
            ),
            SizedBox(width: 8),
            Text('View Artists', style: mainJudul),
          ],
        ),
        SizedBox(height: 32),
        Row(
          children: [
            Image.asset(
              'assets/Share.png',
              width: 21,
              height: 22,
            ),
            SizedBox(width: 8),
            Text('Share', style: mainJudul),
          ],
        ),
        SizedBox(height: 32),
        Row(
          children: [
            Image.asset(
              'assets/gotoradio.png',
              width: 21,
              height: 22,
            ),
            SizedBox(width: 8),
            Text('Go to Song Radio', style: mainJudul),
          ],
        ),
        SizedBox(height: 32),
        Row(
          children: [
            Image.asset(
              'assets/shwcrd.png',
              width: 21,
              height: 22,
            ),
            SizedBox(width: 8),
            Text('Show Credits', style: mainJudul),
          ],
        )
      ]),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [Header(), SizedBox(height: 35), Body()],
      ),
    );
  }
}
