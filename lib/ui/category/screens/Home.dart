import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return
        // FutureBuilder(builder: (context, AsyncSnapshot snapshot) {
          // if (!snapshot.hasData) {
            // return const Center(
              // child: CircularProgressIndicator.adaptive(),
            // );
          // } else if (snapshot.data is String) {
            // return Center(
              // child: Text(snapshot.data),
            // );
          // } else {
            // var data = snapshot.data as 
            // return ListView.builder(
              // itemBuilder: (context, index) {
                // return 
              // },
              // itemCount: data.length,
            // );
          // }
        // });
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
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
            leading: const CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage(
                  "https://w0.peakpx.com/wallpaper/979/89/HD-wallpaper-purple-smile-design-eye-smily-profile-pic-face-thumbnail.jpg"),
            ),
            title: const Text(
              "Stainslav Naida 1 st",
              style: TextStyle(
                  fontWeight: FontWeight.w500, fontSize: 18, color: Colors.white),
            ),
            subtitle: Text(
              "adsfsdfdfasf",
              style: TextStyle(color: Color.fromARGB(233, 229, 223, 1)),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              children: [
                Text(
                  "akelsdfjmlslksaergsfdgsdeawdjfsfljswed wed wedwedwakjsedfsaLP{:adspLFKJLAskdjfsl} we dwe dljdsakfdsjsdfgjldfdjfdjdreojgifkdfxckfLfdxjnslxjcfsdfg",
                  style: TextStyle(color: Color(0xffFFFFFF).withOpacity(0.5)),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 10,
                      backgroundImage: NetworkImage(
                          "https://play-lh.googleusercontent.com/i1qvljmS0nE43vtDhNKeGYtNlujcFxq72WAsyD2htUHOac57Z9Oiew0FrpGKlEehOvo=w240-h480-rw"),
                    ),
                    CircleAvatar(
                      radius: 10,
                      backgroundImage: NetworkImage(
                          "https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png"),
                    ),
                    CircleAvatar(
                      radius: 10,
                      backgroundImage: NetworkImage(
                          "https://media.istockphoto.com/id/610003972/vector/vector-businessman-black-silhouette-isolated.jpg?s=612x612&w=0&k=20&c=Iu6j0zFZBkswfq8VLVW8XmTLLxTLM63bfvI6uXdkacM="),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "17",
                      style: TextStyle(color: Color(0xffFFFFFF).withOpacity(0.5)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 170),
                      child: Text(
                        "123 comments",
                        style: TextStyle(
                            color: const Color(0xffFFFFFF).withOpacity(0.5)),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                Divider(
                  color: Color(0xffFFFFFF).withOpacity(0.5),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        IconButton(
                          icon: Icon(
                            Icons.thumb_up_alt_outlined,
                            color: const Color(0xffFFFFFF).withOpacity(0.5),
                          ),
                          onPressed: () {},
                        ),
                        Text(
                          "Like",
                          style: TextStyle(
                              color: Color(0xffFFFFFF).withOpacity(0.5)),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        IconButton(
                          icon: Icon(
                            Icons.insert_comment,
                            color: Color(0xffFFFFFF).withOpacity(0.5),
                          ),
                          onPressed: () {},
                        ),
                        Text(
                          "Comment",
                          style: TextStyle(
                              color: Color(0xffFFFFFF).withOpacity(0.5)),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        IconButton(
                          icon: Icon(
                            Icons.turn_right_sharp,
                            color: Color(0xffFFFFFF).withOpacity(0.5),
                          ),
                          onPressed: () {},
                        ),
                        Text(
                          "Share",
                          style: TextStyle(
                              color: Color(0xffFFFFFF).withOpacity(0.5)),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        IconButton(
                          icon: Icon(
                            Icons.send,
                            color: Color(0xffFFFFFF).withOpacity(0.5),
                          ),
                          onPressed: () {},
                        ),
                        Text(
                          "Send",
                          style: TextStyle(
                              color: Color(0xffFFFFFF).withOpacity(0.5)),
                        )
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
          // Divider(color: ),
          ListTile(
            leading: CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage(
                  "https://imgv3.fotor.com/images/blog-cover-image/10-profile-picture-ideas-to-make-you-stand-out.jpg"),
            ),
            title: Text(
              "Vera Drozdova 2 st",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.white),
            ),
            subtitle: Text(
              "Ui/Ux Designer \n17 h",
              style: TextStyle(
                  fontSize: 17, fontWeight: FontWeight.w400, color: Colors.white),
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.more_vert,
                color: Colors.white,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                right: 15,
                left: 15,
              ),
              child: Container(
                width: 384,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://img.freepik.com/premium-photo/image-colorful-galaxy-sky-generative-ai_791316-9864.jpg?w=1380"))),
              ),
            ),
          ),
              ],
            ),
        );
  }
}
