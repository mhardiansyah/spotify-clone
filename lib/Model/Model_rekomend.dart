import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:spotify/Themes/colors.dart';

class ModelRekomend extends StatelessWidget {
  final String imageRekomend;
  final String namaRekomend;

  const ModelRekomend(
      {super.key, required this.imageRekomend, required this.namaRekomend});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 189,
      height: 70,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: rekomend,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Image.asset(
                imageRekomend,
                height: 60,
                width: 60,
              ),
             const SizedBox(
                width: 4,
              ),
              Text(
                namaRekomend,
                style:
                    GoogleFonts.inter(fontSize: 11, color: whiteWithOpacity70),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
