import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:spotify/Themes/colors.dart';
import 'package:spotify/UI/Home.dart';
import 'package:spotify/UI/Library.dart';
import 'package:spotify/UI/Premium.dart';
import 'package:spotify/UI/Search.dart';
import 'package:spotify/UI/like_song.dart';

class page extends StatefulWidget {
  const page({super.key});

  @override
  State<page> createState() => _pagetState();
}

class _pagetState extends State<page> {
  int _currentIndex = 0;
  final List<Widget> _page = [
    Center(
      child: Home(),
    ),
    Center(
      child: Search(),
    ),
    Center(
      child: Library(),
    ),
    Center(
      child: Premium(),
    ),
  ];
  void _onTapTapp(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: _page[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: primaryColor,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: second,
        unselectedItemColor: Color(0xffD9D9D9),
        currentIndex: _currentIndex,
        onTap: _onTapTapp,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Beranda'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(
              icon: Icon(Icons.library_books), label: ' Your Library'),
          BottomNavigationBarItem(
              icon: Icon(Icons.diamond_outlined), label: ' Premium'),
        ],
      ),
    );
  }
}
