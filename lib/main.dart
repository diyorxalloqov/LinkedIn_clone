import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:linkedin/provider/auth/LoginProvider.dart';
import 'package:linkedin/provider/auth/RegisterProvider.dart';
import 'package:linkedin/provider/home_provider.dart';
import 'package:linkedin/provider/myNetwork_provider.dart';
import 'package:linkedin/provider/notification_provider.dart';
import 'package:linkedin/ui/pages/SplashPage.dart';
import 'package:provider/provider.dart';

void main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => NotificationsProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => MynetworkProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => HomeProvider(),
        ),
        ChangeNotifierProvider(
          create: ((context) => RegisterProvider()),
        ),
        ChangeNotifierProvider(
          create: ((context) => LoginProvider()),
        ),
      ],
      child: const MaterialApp(
        themeMode: ThemeMode.system,
        debugShowCheckedModeBanner: false,
        home: SplashPage(),
      ),
    );
  }
}
