import 'package:flutter/material.dart';
import 'package:linkedin/provider/notification_provider.dart';
import 'package:linkedin/ui/categories/appBars/HomeAppBar.dart';
import 'package:linkedin/ui/categories/appBars/JobsAppBar.dart';
import 'package:linkedin/ui/categories/appBars/MyNetworkAppBar.dart';
import 'package:linkedin/ui/categories/appBars/NotificationAppBar.dart';
import 'package:linkedin/ui/categories/appBars/PostAppBar.dart';
import 'package:linkedin/ui/categories/screens/Home.dart';
import 'package:linkedin/ui/categories/screens/Jobs.dart';
import 'package:linkedin/ui/categories/screens/MyNetwork.dart';
import 'package:linkedin/ui/categories/screens/Post.dart';
import 'package:linkedin/ui/categories/screens/Notification.dart';
import 'package:linkedin/ui/pages/auth/loginPage.dart';
import 'package:provider/provider.dart';

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
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentindex,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.white,
        selectedFontSize: 15,
        unselectedFontSize: 10,
        unselectedItemColor: const Color(0xffC4C4C4),
        backgroundColor: const Color(0xff031A31),
        items: [
          const BottomNavigationBarItem(
              icon: Icon(Icons.home_filled), label: "Home"),
          const BottomNavigationBarItem(
              icon: Icon(Icons.person_search), label: "My Network"),
          const BottomNavigationBarItem(
              icon: Icon(Icons.add_box), label: "Post"),
          BottomNavigationBarItem(
              icon: Stack(alignment: Alignment.topRight, children: [
                const Icon(Icons.notifications_none),
                Visibility(
                    visible: context
                            .watch<NotificationsProvider>()
                            .newMessageCount !=
                        0,
                    child: Positioned(
                        child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 8,
                      child: Text(
                        Provider.of<NotificationsProvider>(context)
                            .newMessageCount
                            .toString(),
                        style: const TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                            color: Colors.red),
                      ),
                    )))
              ]),
              label: "Notification"),
          const BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag), label: "Jobs"),
        ],
        onTap: (value) {
          _currentindex = value;
          setState(() {});
        },
      ),
      drawer: Drawer(
          child: ListView(
        children: [
          const Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                    radius: 40,
                    backgroundImage: NetworkImage(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSI8DK8HCuvWNyHHg8enmbmmf1ue4AeeF3GDw&usqp=CAU")),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Diyor Xalloqov",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
                ),
                SizedBox(
                  height: 5,
                ),
                Text("View profile"),
              ],
            ),
          ),
          const Divider(
            thickness: 1,
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Groups",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          color: Colors.black),
                    )),
                const SizedBox(
                  height: 25,
                ),
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Events",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          color: Colors.black),
                    )),
              ],
            ),
          ),
          Padding(
            padding:
                EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.38),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Divider(
                  thickness: 1,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: TextButton(
                          style: TextButton.styleFrom(iconColor: Colors.black),
                          onPressed: () {},
                          child: const Row(
                            children: [
                              Icon(
                                Icons.settings,
                                size: 25,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Settings",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          )),
                    ),
                  ],
                ),
                TextButton(
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                                title: const Text("Sign out"),
                                content: const Text(
                                    "Are you sure you want to sign out?"),
                                actions: [
                                  TextButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      child: const Text("Cancel")),
                                  TextButton(
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    LoginPage()));
                                      },
                                      child: const Text("Sign out")),
                                ],
                              ));
                    },
                    child: const Text("Sign out")),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
