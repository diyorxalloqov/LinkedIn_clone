import 'package:custom_line_indicator_bottom_navbar/custom_line_indicator_bottom_navbar.dart';
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
    NotificationPage(),
    Jobs()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(3, 26, 49, 1),
      appBar: PreferredSize(
          preferredSize: const Size(double.infinity, 70),
          child: _appBars[_currentindex]),
      body: _screens[_currentindex],
      bottomNavigationBar: CustomLineIndicatorBottomNavbar(
        currentIndex: _currentindex,
        selectedIconSize: 25,
        unselectedIconSize: 20,
        selectedColor: Colors.white,
        unSelectedColor: const Color(0xffC4C4C4),
        backgroundColor: const Color(0xff031A31),
        customBottomBarItems: [
          CustomBottomBarItems(icon: Icons.home_filled, label: "Home"),
          CustomBottomBarItems(icon: Icons.person_search, label: "My Network"),
          CustomBottomBarItems(icon: Icons.add_box, label: "Post"),
          CustomBottomBarItems(
              icon: Icons.notifications_none_outlined, label: "Notification"),
          CustomBottomBarItems(icon: Icons.shopping_bag, label: "Jobs"),
        ],
        onTap: (value) {
          _currentindex = value;
          setState(() {});
        },
      ),
    );
  }
}
