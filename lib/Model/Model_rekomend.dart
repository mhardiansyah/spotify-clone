import 'package:flutter/material.dart';
import 'package:spotify/Themes/colors.dart';

class ModelRekomend extends StatelessWidget {
  final String imageRekomend;
  final String namaRekomend;

  const ModelRekomend(
      {super.key, required this.imageRekomend, required this.namaRekomend});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.green,
      ),
      child: Column(
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                imageRekomend,
                height: 60,
                width: 60,
              ),
              SizedBox(
                width: 8,
              ),
              Text(
                namaRekomend,
                style: subJudul,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
