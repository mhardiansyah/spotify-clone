// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:spotify/Themes/colors.dart';

class Premium extends StatelessWidget {
  const Premium({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 65, left: 17, right: 17),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(children: [
                Image.asset(
                  'assets/Logo.png',
                  width: 35,
                  height: 35,
                ),
                SizedBox(width: 8),
                Text(
                  'Premium',
                  style: mainJudul,
                )
              ]),
              const SizedBox(height: 120),
              Container(
                width: 380,
                height: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25), color: white),
                child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Dapatkan premium individual',
                      style: btnlogin2,
                    )),
              ),
              const SizedBox(height: 55),
              Container(
                  margin: const EdgeInsets.only(bottom: 34),
                  padding:
                      EdgeInsets.only(top: 15, bottom: 30, left: 17, right: 17),
                  width: 380,
                  height: 295,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: whiteabu,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Mengapa bergabung ke Premium?',
                        style: pilihan,
                      ),
                      Expanded(
                          child: Divider(
                        height: 25,
                        thickness: 2,
                        color: Colors.black,
                      )),
                      const SizedBox(height: 5),
                      Text(
                        'Mendengarkan musik bebas iklan',
                        style: detail,
                      ),
                      const SizedBox(height: 11),
                      const Text('Download untuk mendengarkan offline'),
                      const SizedBox(height: 11),
                      const Text('Putar lagu dalam urutan apa pun'),
                      const SizedBox(height: 11),
                      const Text('Kualifikasi Audio tinggi'),
                      const SizedBox(height: 11),
                      const Text('Mendengarkan bersama teman secara real time'),
                      const Text('Mengelola antrean lagu'),
                    ],
                  )),
              Text(
                'Paket yang tersedia',
                style: numlagu,
              ),
              const SizedBox(
                height: 11,
              ),
              Container(
                  margin: const EdgeInsets.only(bottom: 57),
                  padding:
                      EdgeInsets.only(top: 15, bottom: 23, left: 17, right: 17),
                  width: 380,
                  height: 400,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: whiteabu,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            'assets/Logo.png',
                            width: 25,
                            height: 25,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(
                            'Premium',
                            style: pilihan2,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 22,
                      ),
                      Text(
                        'mini',
                        style: premium,
                      ),
                      const SizedBox(height: 22),
                      Text(
                        'Rp.10.999 selama 1 minggu',
                        style: numlagu,
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      Expanded(
                          child: Divider(
                        height: 25,
                        thickness: 2,
                        color: Colors.black,
                      )),
                      const SizedBox(height: 5),
                      Text(
                        'Mendengarkan musik bebas iklan',
                        style: detail,
                      ),
                      const SizedBox(height: 11),
                      const Text('Download untuk mendengarkan offline'),
                      const SizedBox(height: 11),
                      const Text('Putar lagu dalam urutan apa pun'),
                      const SizedBox(height: 11),
                      const Text('Kualifikasi Audio tinggi'),
                      const SizedBox(height: 11),
                      const Text('Mendengarkan bersama teman secara real time'),
                      const SizedBox(height: 11),
                      const Text('Mengelola antrean lagu'),
                    ],
                  )),
              Container(
                  margin: const EdgeInsets.only(bottom: 57),
                  padding:
                      EdgeInsets.only(top: 15, bottom: 23, left: 17, right: 17),
                  width: 380,
                  height: 400,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: whiteabu,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            'assets/Logo.png',
                            width: 25,
                            height: 25,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(
                            'Premium',
                            style: pilihan2,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 22,
                      ),
                      Text(
                        'Individal',
                        style: premiumone,
                      ),
                      const SizedBox(height: 22),
                      Text(
                        'Rp.10.999 selama 1 minggu',
                        style: numlagu,
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      Expanded(
                          child: Divider(
                        height: 25,
                        thickness: 2,
                        color: Colors.black,
                      )),
                      const SizedBox(height: 5),
                      Text(
                        'Mendengarkan musik bebas iklan',
                        style: detail,
                      ),
                      const SizedBox(height: 11),
                      const Text('Download untuk mendengarkan offline'),
                      const SizedBox(height: 11),
                      const Text('Putar lagu dalam urutan apa pun'),
                      const SizedBox(height: 11),
                      const Text('Kualifikasi Audio tinggi'),
                      const SizedBox(height: 11),
                      const Text('Mendengarkan bersama teman secara real time'),
                      const SizedBox(height: 11),
                      const Text('Mengelola antrean lagu'),
                    ],
                  )),
              Container(
                  margin: const EdgeInsets.only(bottom: 57),
                  padding: const EdgeInsets.only(
                      top: 15, bottom: 23, left: 17, right: 17),
                  width: 380,
                  height: 400,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: whiteabu,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            'assets/Logo.png',
                            width: 25,
                            height: 25,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(
                            'Premium',
                            style: pilihan2,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 22,
                      ),
                      Text(
                        'Family',
                        style: premiumtwo,
                      ),
                      const SizedBox(height: 22),
                      Text(
                        'Rp.10.999 selama 1 minggu',
                        style: numlagu,
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      Expanded(
                          child: Divider(
                        height: 25,
                        thickness: 2,
                        color: Colors.black,
                      )),
                      const SizedBox(height: 5),
                      Text(
                        'Mendengarkan musik bebas iklan',
                        style: detail,
                      ),
                      const SizedBox(height: 11),
                      const Text('Download untuk mendengarkan offline'),
                      const SizedBox(height: 11),
                      const Text('Putar lagu dalam urutan apa pun'),
                      const SizedBox(height: 11),
                      const Text('Kualifikasi Audio tinggi'),
                      const SizedBox(height: 11),
                      const Text('Mendengarkan bersama teman secara real time'),
                      const SizedBox(height: 11),
                      const Text('Mengelola antrean lagu'),
                    ],
                  )),
              Container(
                  margin: const EdgeInsets.only(bottom: 40),
                  padding: const EdgeInsets.only(
                      top: 15, bottom: 23, left: 17, right: 17),
                  width: 380,
                  height: 400,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: whiteabu,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            'assets/Logo.png',
                            width: 25,
                            height: 25,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'Premium',
                            style: pilihan2,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 22,
                      ),
                      Text(
                        'Student',
                        style: premiumtri,
                      ),
                      const SizedBox(height: 22),
                      Text(
                        'Rp.10.999 selama 1 minggu',
                        style: numlagu,
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      Expanded(
                          child: Divider(
                        height: 25,
                        thickness: 2,
                        color: Colors.black,
                      )),
                      SizedBox(height: 5),
                      Text(
                        'Mendengarkan musik bebas iklan',
                        style: detail,
                      ),
                      const SizedBox(height: 11),
                      const Text('Download untuk mendengarkan offline'),
                      const SizedBox(height: 11),
                      const Text('Putar lagu dalam urutan apa pun'),
                      const SizedBox(height: 11),
                      const Text('Kualifikasi Audio tinggi'),
                      const SizedBox(height: 11),
                      const Text('Mendengarkan bersama teman secara real time'),
                      const SizedBox(height: 11),
                      const Text('Mengelola antrean lagu'),
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
