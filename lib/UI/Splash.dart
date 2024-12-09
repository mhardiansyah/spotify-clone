// ignore_for_file: use_build_context_synchronously

import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:spotify/Themes/colors.dart';
import 'package:spotify/UI/Home.dart';
import 'package:spotify/UI/auth/onboard.dart';
import 'package:spotify/UI/page.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();

    Future.delayed(Duration(seconds: 3), () {
      Navigator.of(context).push(_dillvose());
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Center(
        child: Image.asset(
          'assets/Logo.png',
          height: 170,
          width: 170,
        ),
      ),
    );
  }
}

Route _dillvose() {
  return PageRouteBuilder(
      pageBuilder: (context, animation, seconds) => onboard(),
      transitionsBuilder: (context, animation, seconds, child) {
        return FadeTransition(
          opacity: animation,
          child: child,
        );
      });
}
