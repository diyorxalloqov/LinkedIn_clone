import 'package:flutter/material.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return
        // FutureBuilder(
        //   builder: (context, AsyncSnapshot snapshot) {
        //     if (!snapshot.hasData) {
        //       return Center(
        //         child: CircularProgressIndicator.adaptive(),
        //       );
        //     } else if (snapshot.data is String) {
        //       return Center(
        //         child: Text(snapshot.data),
        //       );
        //     } else {
        //       return ListView.builder(itemBuilder: (context, index) {});
        //     }
        //   },
        // );
        SizedBox(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        itemBuilder: (context, index) {
          return ListTile(
            title: const Text(
              "awklemfawrklmarlkmalkdfmkadmflkmdfkmrkdjfnmsalk;fsvm;afmnbdfnkbjsfnbkjnf",
              style: TextStyle(color: Colors.white),
            ),
            leading: const CircleAvatar(
              radius: 25,
              backgroundImage: NetworkImage(
                  "https://bestprofilepictures.com/wp-content/uploads/2021/04/Cool-Profile-Picture-986x1024.jpg"),
            ),
            trailing: Column(
              // mainAxisSize: MainAxisSize.min,
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
                  iconSize: 25,
                )
              ],
            ),
            onTap: () {},
          );
        },
        itemCount: 15,
      ),
    );
  }
}
