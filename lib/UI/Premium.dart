// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:spotify/Themes/colors2.dart';

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
              SizedBox(height: 120),
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
              SizedBox(height: 55),
              Container(
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
                      SizedBox(height: 5),
                      Text(
                        'Mendengarkan musik bebas iklan',
                        style: detail,
                      ),
                      SizedBox(height: 11),
                      Text('Download untuk mendengarkan offline'),
                      SizedBox(height: 11),
                      Text('Putar lagu dalam urutan apa pun'),
                      SizedBox(height: 11),
                      Text('Kualifikasi Audio tinggi'),
                      SizedBox(height: 11),
                      Text('Mendengarkan bersama teman secara real time'),
                      SizedBox(height: 11),
                      Text('Mengelola antrean lagu'),
                    ],
                  )),
              SizedBox(
                height: 34,
              ),
              Text(
                'Paket yang tersedia',
                style: numlagu,
              ),
              SizedBox(
                height: 11,
              ),
              Container(
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
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'Premium',
                            style: pilihan,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 22,
                      ),
                      Text(
                        'mini',
                        style: premium,
                      ),
                      SizedBox(height: 22),
                      Text(
                        'Rp.10.999 selama 1 minggu',
                        style: numlagu,
                      ),
                      SizedBox(
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
                      SizedBox(height: 11),
                      Text('Download untuk mendengarkan offline'),
                      SizedBox(height: 11),
                      Text('Putar lagu dalam urutan apa pun'),
                      SizedBox(height: 11),
                      Text('Kualifikasi Audio tinggi'),
                      SizedBox(height: 11),
                      Text('Mendengarkan bersama teman secara real time'),
                      SizedBox(height: 11),
                      Text('Mengelola antrean lagu'),
                    ],
                  )),
             const SizedBox(
                height: 67,
              ),
              Container(
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
                        const  SizedBox(
                            width: 5,
                          ),
                          Text(
                            'Premium',
                            style: pilihan,
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
                    const  SizedBox(height: 22),
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
                    const  Text('Download untuk mendengarkan offline'),
                    const  SizedBox(height: 11),
                     const Text('Putar lagu dalam urutan apa pun'),
                     const SizedBox(height: 11),
                    const  Text('Kualifikasi Audio tinggi'),
                    const  SizedBox(height: 11),
                    const  Text('Mendengarkan bersama teman secara real time'),
                     const SizedBox(height: 11),
                     const Text('Mengelola antrean lagu'),
                    ],
                  )),
              SizedBox(height: 67),
              Container(
                  padding:
                    const  EdgeInsets.only(top: 15, bottom: 23, left: 17, right: 17),
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
                        const  SizedBox(
                            width: 5,
                          ),
                          Text(
                            'Premium',
                            style: pilihan,
                          ),
                        ],
                      ),
                    const  SizedBox(
                        height: 22,
                      ),
                      Text(
                        'Family',
                        style: premiumtwo,
                      ),
                    const  SizedBox(height: 22),
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
                      SizedBox(height: 11),
                      Text('Download untuk mendengarkan offline'),
                      SizedBox(height: 11),
                      Text('Putar lagu dalam urutan apa pun'),
                      SizedBox(height: 11),
                      Text('Kualifikasi Audio tinggi'),
                      SizedBox(height: 11),
                      Text('Mendengarkan bersama teman secara real time'),
                      SizedBox(height: 11),
                      Text('Mengelola antrean lagu'),
                    ],
                  )),
              SizedBox(height: 67),
              Container(
                  padding:
                    const  EdgeInsets.only(top: 15, bottom: 23, left: 17, right: 17),
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
                            style: pilihan,
                          ),
                        ],
                      ),
                    const  SizedBox(
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
                      SizedBox(height: 11),
                      Text('Download untuk mendengarkan offline'),
                      SizedBox(height: 11),
                      Text('Putar lagu dalam urutan apa pun'),
                      SizedBox(height: 11),
                      Text('Kualifikasi Audio tinggi'),
                      SizedBox(height: 11),
                      Text('Mendengarkan bersama teman secara real time'),
                      SizedBox(height: 11),
                      Text('Mengelola antrean lagu'),
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
