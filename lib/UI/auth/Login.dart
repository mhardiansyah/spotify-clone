import 'package:flutter/material.dart';
import 'package:spotify/Themes/colors.dart';
import 'package:spotify/UI/auth/Login.dart';
import 'package:spotify/UI/auth/Register.dart';
import 'package:spotify/UI/auth/loading.dart';
import 'package:spotify/UI/page.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Padding(
        padding:const EdgeInsets.only(
          right: 17,
          left: 17,
          top: 70,
        ),
        child: Center(
          child: Column(
            children: [
              Image.asset(
                'assets/Logo.png',
                width: 86,
                height: 89,
              ),
             const SizedBox(
                height: 31,
              ),
              Text(
                'Millions  Of Songs.\nFree On Spotify',
                textAlign: TextAlign.center,
                style: judullogin,
              ),
             const SizedBox(
                height: 45,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                     const SizedBox(
                        width: 13,
                      ),
                      Text(
                        'Username',
                        style: sublogin,
                      ),
                    ],
                  ),
                 const SizedBox(
                    height: 11,
                  ),
                  Container(
                    width: 380,
                    height: 68,
                    margin:const EdgeInsets.only(bottom: 28),
                    padding:const EdgeInsets.only(
                      left: 26,
                      top: 15,
                      bottom: 15,
                    ),
                    decoration: BoxDecoration(
                        border: Border.all(color: second),
                        borderRadius: BorderRadius.circular(35)),
                    child: TextFormField(
                      style: TextStyle(color: white),
                      decoration: InputDecoration(
                          hintStyle: TextStyle(color: whiteWithOpacity70),
                          hintText: 'Enter your Username',
                          border: InputBorder.none),
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                    const  SizedBox(
                        width: 13,
                      ),
                      Text(
                        'Password',
                        style: sublogin,
                      ),
                    ],
                  ),
                 const SizedBox(
                    height: 11,
                  ),
                  Container(
                    width: 380,
                    height: 68,
                    margin: const EdgeInsets.only(bottom: 28),
                    padding:const EdgeInsets.only(
                      left: 26,
                      top: 15,
                      bottom: 15,
                    ),
                    decoration: BoxDecoration(
                        border: Border.all(color: second),
                        borderRadius: BorderRadius.circular(35)),
                    child: TextFormField(
                      style: TextStyle(color: white),
                      decoration: InputDecoration(
                          hintStyle: TextStyle(color: whiteWithOpacity70),
                          hintText: 'Enter your password',
                          border: InputBorder.none),
                    ),
                  ),
                ],
              ),
              Spacer(),
              Container(
                margin: EdgeInsets.only(bottom: 20),
                width: 380,
                height: 68,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(35),
                  color: second,
                ),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Loading(),
                        ));
                  },
                  child: Center(
                    child: Text(
                      'Sign in',
                      style: btnlogin,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account?  ",
                    style: numlogin,
                  ),
                  InkWell(
                    onTap: () => keRegister(context),
                    child: Text(
                      'Register',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: second),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  keRegister(BuildContext context) => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Register(),
        ),
      );
}


