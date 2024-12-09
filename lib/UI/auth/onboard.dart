import 'package:flutter/material.dart';
import 'package:spotify/Themes/colors.dart';
import 'package:spotify/UI/auth/login.dart';
import 'package:spotify/UI/auth/Register.dart';

class onboard extends StatefulWidget {
  const onboard({super.key});

  @override
  State<onboard> createState() => _onboardState();
}

class _onboardState extends State<onboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Padding(
        padding: const EdgeInsets.only(right: 17, left: 17, top: 70),
        child: Center(
          child: Column(
            children: [
              Image.asset(
                'assets/Logo.png',
                width: 86,
                height: 89,
              ),
              SizedBox(
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
              Container(
                margin: const EdgeInsets.only(bottom: 20),
                width: 380,
                height: 68,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(35),
                  color: second,
                ),
                child: TextButton(
                  onPressed: () {
                    Navigator.of(context).push(_dillvose());
                  },
                  child: Center(
                    child: Text(
                      'Sign up free',
                      style: btnlogin,
                    ),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 20),
                width: 380,
                height: 68,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(35),
                    border: Border.all(color: white)),
                child: Container(
                  padding: const EdgeInsets.only(left: 14, top: 16, bottom: 17),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset('assets/google.png'),
                      const SizedBox(
                        width: 33,
                      ),
                      Text(
                        'Sign in with Google',
                        style: sublogin,
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 20),
                width: 380,
                height: 68,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(35),
                    border: Border.all(color: white)),
                child: Container(
                  padding: const EdgeInsets.only(left: 14, top: 16, bottom: 17),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset('assets/fb.png'),
                      const SizedBox(
                        width: 33,
                      ),
                      Text(
                        'Continue with facebook',
                        style: sublogin,
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 20),
                width: 380,
                height: 68,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(35),
                    border: Border.all(color: white)),
                child: Container(
                  padding: const EdgeInsets.only(left: 14, top: 16, bottom: 17),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset('assets/x.png'),
                      const SizedBox(
                        width: 54,
                      ),
                      Text(
                        'Continue with X',
                        style: sublogin,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Route _dillvose() {
  return PageRouteBuilder(
      pageBuilder: (context, animation, seconds) => Register(),
      transitionsBuilder: (context, animation, seconds, child) {
        return FadeTransition(
          opacity: animation,
          child: child,
        );
      });
}
