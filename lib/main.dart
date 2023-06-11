import 'package:flutter/material.dart';
import 'package:linkedin/ui/pages/SplashPage.dart';

void main(List<String> args) {
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      themeMode: ThemeMode.system,
      
      debugShowCheckedModeBanner: false,
      home: SplashPage(),
    );
  }
}