import 'package:flutter/material.dart';
import 'package:spotify/Themes/colors.dart';
import 'package:spotify/UI/screenlagu.dart';

class ModelHome extends StatelessWidget {
  final String imagehome;
  final String name;
  final String desc;

  const ModelHome(
      {super.key,
      required this.imagehome,
      required this.name,
      required this.desc});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Screenlagu()));
      },
      child: Container(
        margin: EdgeInsets.only(bottom: 21),
        width: 167,
        height: 220,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              imagehome,
              width: 167,
              height: 167,
            ),
            SizedBox(
              height: 12,
            ),
            Text(
              name,
              style: detail,
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              desc,
              style: detail2,
            ),
          ],
        ),
      ),
    );
  }
}
