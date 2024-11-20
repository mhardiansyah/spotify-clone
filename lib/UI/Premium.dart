import 'package:flutter/material.dart';
import 'package:spotify/Themes/colors.dart';

class Premium extends StatelessWidget {
  const Premium({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Padding(
        padding: const EdgeInsets.only(right: 17, left: 17, top: 39),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
                Icons.keyboard_arrow_left_outlined,
                size: 26,
                color: white,
              ),
             const SizedBox(height: 29,),


          ],
        ),
      ),
    );
  }
}
