import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:linkedin/db/auth_dbService.dart';
import 'package:linkedin/ui/pages/MainPage.dart';
import 'package:linkedin/ui/pages/auth/loginPage.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3))
        .then((value) => checkAccesToken(context));
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
          child: Image.asset(
        "assets/logo.png",
        width: 250,
      )),
    );
  }

  void checkAccesToken(BuildContext context) async {
    await AuthDB().openbox();

    // String? accessToken = await AuthDB().authbox!.get("access_token");
    String? accesToken = await Hive.box("authbox").get("access_token");
    if (accesToken != null && accesToken.isNotEmpty) {
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => HomePage()),
          (route) => false);
    } else {
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => LoginPage()),
          (route) => false);
    }
  }
}
