// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, sized_box_for_whitespace
import 'package:flutter/material.dart';
import 'package:message_me/widgets/my_button.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Column(
              children: [
                Container(
                  height: 180,
                  child: Image.asset('assets/logo.png'),
                ),
                const Text(
                  "ChatMe",
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w900,
                    color: Color(0xff2e386b),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            MyButton(
              color: Colors.yellow[900]!,
              onPressed: () {
               // Navigator.pushNamed(context, '/LoginScreen');
               Navigator.pushNamed(context, '/LoginScreen');
             },
              title: 'Sign In',
            ),
            MyButton(
              color: Colors.blue[800]!,
              onPressed: () {
                Navigator.pushNamed(context, '/RegistrationScreen');
              },
              title: 'Register',
            ),
          ],
        ),
      ),
    );
  }
}
