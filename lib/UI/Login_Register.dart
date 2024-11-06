import 'package:flutter/material.dart';
import 'package:spotify/Themes/colors.dart';

class LoginRegister extends StatefulWidget {
  const LoginRegister({super.key});

  @override
  State<LoginRegister> createState() => _LoginRegisterState();
}

class _LoginRegisterState extends State<LoginRegister> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 70),
        child: Column(
          children: [
            Container(
              width: 200,
              decoration: BoxDecoration(
                color: second,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text('register'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
