import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:spotify/Themes/colors.dart';
import 'package:spotify/UI/page.dart';

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  @override
  void initState() {
    super.initState();

    Future.delayed(Duration(seconds: 1), () {
      Navigator.of(context).push(_dillvose());
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
    );
  }
}

Route _dillvose() {
  return PageRouteBuilder(
      pageBuilder: (context, animation, seconds) => page(),
      transitionsBuilder: (context, animation, seconds, child) {
        return FadeTransition(
          opacity: animation,
          child: child,
        );
      });
}
