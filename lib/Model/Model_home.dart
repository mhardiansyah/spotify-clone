import 'package:flutter/material.dart';
import 'package:spotify/Themes/colors.dart';
import 'package:spotify/UI/screenlagu.dart';

class ModelHome extends StatelessWidget {
  final String imagehome; // Gambar lagu
  final String name; // Nama lagu
  final String? desc; // Nama artis
  final String audioPath; // Path audio lagu

  const ModelHome({
    super.key,
    required this.imagehome,
    required this.name,
    required this.desc,
    required this.audioPath,
  });

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
          context,
          PageRouteBuilder(
            pageBuilder: (context, animation, secondaryAnimation) => Screenlagu(
              image: imagehome,
              title: name,
              artist: desc ?? 'Unknown Artist',
              audioPath: audioPath,
            ),
            transitionsBuilder: (context, animation, secondaryAnimation, child) {
              const begin = Offset(0.0, 1.0);
              const end = Offset.zero;
              const curve = Curves.ease;

              var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
              var offsetAnimation = animation.drive(tween);

              return SlideTransition(
                position: offsetAnimation,
                child: child,
              );
            },
          ),
        );
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 21),
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
            const SizedBox(height: 12),
            Text(
              name,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: containerstyle,
            ),
            const SizedBox(height: 5),
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
