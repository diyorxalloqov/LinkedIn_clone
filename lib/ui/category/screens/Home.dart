import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        ListTile(
          title: const Text(
            "adf,lskdmfskldmfklsdfnmsvs dsdf sdfadf sdfsdf sdfsdf sdfmklad",
            style: TextStyle(color: Colors.white),
          ),
          trailing: IconButton(
            icon: const Icon(
              Icons.more_vert,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ),
       const Divider(
          color: Colors.white,
          endIndent: 30,
          indent: 20,
        ),
        ListTile(
          leading: const CircleAvatar(radius: 30,backgroundImage: NetworkImage("https://w0.peakpx.com/wallpaper/979/89/HD-wallpaper-purple-smile-design-eye-smily-profile-pic-face-thumbnail.jpg"),),
          title: const Text(
            "skasaslf daerger",
            style: TextStyle(color: Colors.white),
          ),
          subtitle: Text(
            "adsfsdfdfasf",
            style: TextStyle(color: Colors.blueGrey.shade300),
          ),
        ),
       const Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: [
              Text(
                "akelsdfjmlslksdjfsfljswed wed wedwed\n we dwe dljdsakfdsjsdfgjldfdjfdjdreojgifkdfxckfLfdxjnslxjcfsdfg",
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  CircleAvatar(radius: 10,backgroundImage: NetworkImage("https://play-lh.googleusercontent.com/i1qvljmS0nE43vtDhNKeGYtNlujcFxq72WAsyD2htUHOac57Z9Oiew0FrpGKlEehOvo=w240-h480-rw"),),
                  CircleAvatar(
                    radius: 10,
                    backgroundImage: NetworkImage("https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png"),
                  ),
                  CircleAvatar(
                    radius: 10,
                    backgroundImage: NetworkImage("https://media.istockphoto.com/id/610003972/vector/vector-businessman-black-silhouette-isolated.jpg?s=612x612&w=0&k=20&c=Iu6j0zFZBkswfq8VLVW8XmTLLxTLM63bfvI6uXdkacM="),
                  ),
                  SizedBox(width: 10,),
                  Text("17",style: TextStyle(color: Colors.white),),
                  Padding(
                    padding: EdgeInsets.only(left: 170),
                    child: Text(
                      "123 comments",
                      style: TextStyle(color: Colors.white),
                    ),
                  )
                ],
              ),
              SizedBox(height: 8,),
              Divider(color: Colors.white,),
            ],
          ),
        ),
      ],
    );
  }
}
