import 'package:flutter/material.dart';
import 'package:spotify/Themes/colors.dart';
import 'package:spotify/UI/screenlagu.dart';

class ModelHome extends StatelessWidget {
  final String imagehome;
  final String name;
  final String? desc;

  const ModelHome(
      {super.key,
      required this.imagehome,
      required this.name,
      required this.desc});

  @override
  Widget build(BuildContext context) {
    TextStyle containerstyle;
    if (name == 'Hurry up, We’re Dreaming') {
      containerstyle = detail3;
    } else {
      containerstyle = detail;
    }
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Screenlagu()));
      },
      child: Container(
        margin: EdgeInsets.only(bottom: 21),
        width: 167,
        height: 230,
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
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: containerstyle,
            ),
            SizedBox(
              height: 5,
            ),
            if (desc != null && desc!.isNotEmpty)
              Text(
                desc!,
                style: detail2,
              ),
          ],
        ),
      ),
    );
  }
}
