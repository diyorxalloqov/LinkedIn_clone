import 'package:flutter/material.dart';
import 'package:linkedin/ui/pages/MainPage.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3)).then(
      (value) {
        Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (context) => const HomePage()),
            (route) => false);
      },
    );
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(child: Image.asset("assets/logo.png",width: 250,)),
    );
  }
}
