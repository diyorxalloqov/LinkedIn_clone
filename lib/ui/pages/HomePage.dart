import 'package:flutter/material.dart';
import 'package:linkedin/ui/category/appBars/HomeAppBar.dart';
import 'package:linkedin/ui/category/appBars/JobsAppBar.dart';
import 'package:linkedin/ui/category/appBars/MyNetworkAppBar.dart';
import 'package:linkedin/ui/category/appBars/NotificationAppBar.dart';
import 'package:linkedin/ui/category/appBars/PostAppBar.dart';
import 'package:linkedin/ui/category/screens/Home.dart';
import 'package:linkedin/ui/category/screens/Jobs.dart';
import 'package:linkedin/ui/category/screens/MyNetwork.dart';
import 'package:linkedin/ui/category/screens/Post.dart';
import 'package:linkedin/ui/category/screens/Notification.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentindex = 0;
  final _appBars = const [
    HomeAppBar(),
    MyNetworkAppBar(),
    PostsAppBar(),
    NotificationAppBar(),
    JobsAppBar()
  ];
  final _screens = const [
    Home(),
    MyNetwork(),
    Posts(),
    Notification1(),
    Jobs()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const  Color.fromRGBO(3, 26, 49, 1),
      appBar: PreferredSize(
          preferredSize: const Size(double.infinity, 70),
          child: _appBars[_currentindex]),
      body: _screens[_currentindex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentindex,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.white,
        unselectedItemColor: const Color(0xffC4C4C4),
        backgroundColor: const Color(0xff031A31),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_search), label: "My Network"),
          BottomNavigationBarItem(icon: Icon(Icons.add_box), label: "Post"),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications_none_outlined),
              label: "Notification"),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag), label: "Jobs"),
        ],
        onTap: (value) {
          _currentindex = value;
          setState(() {});
        },
      ),
    );
  }
}
