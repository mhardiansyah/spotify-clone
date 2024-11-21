import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Color primaryColor = Color(0xFF121212);

Color second = Color(0xFF1ED760);

Color whiteWithOpacity70 = Color(0xB3FFFFFF);

Color white = Color(0xFFFFFFFF);
Color whiteabu = Color(0x98FFFFFF);

Color rekomend = Color(0x73444444);

LinearGradient backgrounds = LinearGradient(colors: [
  Color(0xff3B13B0),
  Color(0xff271363),
  Color(0xff1B1235),
  Color(0xFF121212),
], stops: [
  0.0,
  0.3,
  0.63,
  1.0
], begin: Alignment.topLeft, end: Alignment.bottomRight);

Color textcolor = Colors.white;

//text

TextStyle judul = GoogleFonts.poppins(
    fontSize: 19, color: white, fontWeight: FontWeight.w700);
TextStyle judul2 =
    GoogleFonts.inter(fontSize: 19, color: white, fontWeight: FontWeight.w700);

TextStyle subJudul = GoogleFonts.poppins(
    fontSize: 11, color: white, fontWeight: FontWeight.w700);
TextStyle numjudul =
    GoogleFonts.poppins(fontSize: 9, color: white, fontWeight: FontWeight.w400);

TextStyle mainJudul = GoogleFonts.poppins(
    fontSize: 16, color: white, fontWeight: FontWeight.w500);

TextStyle detail = GoogleFonts.poppins(
    fontSize: 14, color: white, fontWeight: FontWeight.w500);

TextStyle detail2 = GoogleFonts.poppins(
    fontSize: 11, color: whiteWithOpacity70, fontWeight: FontWeight.w500);

TextStyle detail3 = GoogleFonts.poppins(
    fontSize: 11, color: white, fontWeight: FontWeight.w400);

TextStyle judullogin = GoogleFonts.poppins(
    fontSize: 33, color: white, fontWeight: FontWeight.w700);

TextStyle sublogin = GoogleFonts.poppins(
    fontSize: 20, color: white, fontWeight: FontWeight.w500);

TextStyle mainlogin = GoogleFonts.poppins(
    fontSize: 22, color: white, fontWeight: FontWeight.w500);
TextStyle numlogin = GoogleFonts.poppins(
    fontSize: 14, color: white, fontWeight: FontWeight.w500);

TextStyle numlagu = GoogleFonts.poppins(
    fontSize: 12, color: white, fontWeight: FontWeight.w600);

TextStyle sublagu = GoogleFonts.poppins(
    fontSize: 17, color: white, fontWeight: FontWeight.w400);

TextStyle btnlogin = GoogleFonts.poppins(
  fontSize: 25,
  color: Colors.black,
  fontWeight: FontWeight.w600,
);
