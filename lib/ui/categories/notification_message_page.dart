import 'package:flutter/material.dart';
import 'package:linkedin/provider/notification_provider.dart';
import 'package:provider/provider.dart';

class NotificationMessage extends StatelessWidget {
  const NotificationMessage({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<NotificationsProvider>(context);
    return Scaffold(
        appBar: AppBar(
          title: const Text("Message"),
        ),
        body: Builder(builder: ((context) {
          if (provider.isLoading) {
            return const Center(
              child: CircularProgressIndicator.adaptive(),
            );
          } else if (provider.error.isNotEmpty) {
            return Center(
              child: Text(provider.error),
            );
          } else {
            return ListView.builder(
              itemBuilder: (context, index) {
                return ListTile(
                  tileColor: provider.data!.notification![index].bajarildi!
                      ? Colors.white
                      : Colors.blueGrey,
                  onTap: () {
                    provider.decrement(index);
                    provider.data!.notification![index].bajarildi = true;
                    
                  },
                  title: Text(
                      provider.data!.notification![index].title.toString()),
                );
              },
              itemCount: provider.data!.notification!.length,
            );
          }
        })));
  }
}
