import 'package:flutter/material.dart';
import 'package:linkedin/ui/pages/HomePage.dart';

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
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 535,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(bottom: Radius.circular(30))
              ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 100),
                  child: Center(
                              child: Image.asset("assets/linkedin Logo.png")
                            ),
                )),
          ],
        ),
      ),
    );
  }
}
