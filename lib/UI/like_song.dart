import 'package:flutter/material.dart';
import 'package:spotify/Themes/colors.dart';

class LikeSong extends StatefulWidget {
  const LikeSong({super.key});

  @override
  State<LikeSong> createState() => _LikeSongState();
}

class _LikeSongState extends State<LikeSong> {
  @override
  // ignore: override_on_non_overriding_member
  Widget header() {
    return Container(
      padding: const EdgeInsets.only(left: 17, right: 17, top: 58),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back,
              size: 24,
              color: white,
            ),
          ),
          SizedBox(
            height: 22,
          ),
          Row(
            children: [
              Container(
                width: 310,
                height: 38,
                child: TextFormField(
                  decoration: InputDecoration(
                    fillColor: Colors.white.withOpacity(0.1),
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide.none,
                    ),
                    prefixIcon: Icon(Icons.search, size: 14, color: white),
                    hintText: 'Artists, songs, or podcasts',
                    hintStyle: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.w700,
                        color: white),
                  ),
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              Container(
                width: 56,
                height: 38,
                decoration: BoxDecoration(
                  color: white.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Sort',
                    style: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.w700,
                        color: white),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget body() {
    return Column(
      children: [],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          colors: [
            Color(0xff3B13B0),
            Color(0xff271363),
            Color(0xff1B1235),
            Color(0xff121212),
          ],
          stops: [
            0.0,
            0.3,
            0.63,
            1.0
          ], // Sesuaikan dengan posisi warna dari Figma
          begin: Alignment.topCenter,
          end: Alignment.center,
        )),
        child: Column(
          children: [
            header(),
          ],
        ),
      ),
    );
  }
}
