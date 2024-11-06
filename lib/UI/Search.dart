import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:spotify/UI/Home.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Home(),
          ));
    });
  }

  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
