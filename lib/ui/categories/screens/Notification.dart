import 'package:flutter/material.dart';
import 'package:linkedin/provider/notification_provider.dart';
import 'package:provider/provider.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    NotificationsProvider provider =
        Provider.of<NotificationsProvider>(context);
    return Builder(builder: (context) {
      if (provider.isLoading) {
        return const Center(
          child: CircularProgressIndicator.adaptive(),
        );
      } else if (provider.error.isNotEmpty) {
        return Center(
          child: Text(provider.error),
        );
      } else {
        return SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: ListView.builder(
            itemBuilder: (context, index) {
              return ListTile(
                // tileColor: isTap ? Colors.lightBlue[100] : Colors.green,
                // tileColor: Colors.blueGrey,
                // tileColor: Colors.transparent,
                title: Text(
                  provider.data!.notification![index].title.toString(),
                  style: const TextStyle(color: Colors.white),
                ),
                leading: CircleAvatar(
                  radius: 25,
                  backgroundImage: NetworkImage(
                      provider.data!.notification![index].img.toString()),
                ),
                trailing: Column(
                  children: [
                    const Text(
                      "1 h",
                      style: TextStyle(fontSize: 7, color: Colors.white),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.more_vert,
                        color: Colors.white,
                      ),
                      iconSize: 20,
                    )
                  ],
                ),
                onTap: () {},
              );
            },
            itemCount: provider.data!.notification!.length,
          ),
        );
      }
    });
  }
}
