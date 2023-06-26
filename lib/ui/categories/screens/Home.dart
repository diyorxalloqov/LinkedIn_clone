import 'package:flutter/material.dart';
import 'package:linkedin/provider/home_provider.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<HomeProvider>(context);
    return Builder(
      builder: (context) {
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
              return SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    ListTile(
                      title: const Text(
                        "Kateryna Luibinskaya and Tatyana Romanova like this",
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
                      leading: CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage(
                            provider.data!.home![index].profileImg.toString()),
                      ),
                      title: Text(
                        provider.data!.home![index].title.toString(),
                        style: const TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                            color: Colors.white),
                      ),
                      subtitle: Text(
                        provider.data!.home![index].profession.toString(),
                        style: const TextStyle(
                            color: Color.fromARGB(233, 229, 223, 1)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          Text(
                            provider.data!.home![index].comments.toString(),
                            style: TextStyle(
                                color:
                                    const Color(0xffFFFFFF).withOpacity(0.5)),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              const CircleAvatar(
                                radius: 10,
                                backgroundImage: NetworkImage(
                                    "https://play-lh.googleusercontent.com/i1qvljmS0nE43vtDhNKeGYtNlujcFxq72WAsyD2htUHOac57Z9Oiew0FrpGKlEehOvo=w240-h480-rw"),
                              ),
                              const CircleAvatar(
                                radius: 10,
                                backgroundImage: NetworkImage(
                                    "https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png"),
                              ),
                              const CircleAvatar(
                                radius: 10,
                                backgroundImage: NetworkImage(
                                    "https://media.istockphoto.com/id/610003972/vector/vector-businessman-black-silhouette-isolated.jpg?s=612x612&w=0&k=20&c=Iu6j0zFZBkswfq8VLVW8XmTLLxTLM63bfvI6uXdkacM="),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                provider.data!.home![index].like.toString(),
                                style: TextStyle(
                                    color: const Color(0xffFFFFFF)
                                        .withOpacity(0.5)),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 170),
                                child: Text(
                                  provider.data!.home![index].commentsNumber
                                      .toString(),
                                  style: TextStyle(
                                      color: const Color(0xffFFFFFF)
                                          .withOpacity(0.5)),
                                ),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Divider(
                            color: const Color(0xffFFFFFF).withOpacity(0.5),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(
                                children: [
                                  IconButton(
                                    icon: Icon(
                                      Icons.thumb_up_alt_outlined,
                                      color: const Color(0xffFFFFFF)
                                          .withOpacity(0.5),
                                    ),
                                    onPressed: () {},
                                  ),
                                  Text(
                                    "Like",
                                    style: TextStyle(
                                        color: const Color(0xffFFFFFF)
                                            .withOpacity(0.5)),
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  IconButton(
                                    icon: Icon(
                                      Icons.insert_comment,
                                      color: const Color(0xffFFFFFF)
                                          .withOpacity(0.5),
                                    ),
                                    onPressed: () {},
                                  ),
                                  Text(
                                    "Comment",
                                    style: TextStyle(
                                        color: const Color(0xffFFFFFF)
                                            .withOpacity(0.5)),
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  IconButton(
                                    icon: Icon(
                                      Icons.turn_right_sharp,
                                      color: const Color(0xffFFFFFF)
                                          .withOpacity(0.5),
                                    ),
                                    onPressed: () {},
                                  ),
                                  Text(
                                    "Share",
                                    style: TextStyle(
                                        color: const Color(0xffFFFFFF)
                                            .withOpacity(0.5)),
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  IconButton(
                                    icon: Icon(
                                      Icons.send,
                                      color: const Color(0xffFFFFFF)
                                          .withOpacity(0.5),
                                    ),
                                    onPressed: () {},
                                  ),
                                  Text(
                                    "Send",
                                    style: TextStyle(
                                        color: const Color(0xffFFFFFF)
                                            .withOpacity(0.5)),
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
                      leading: const CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSI8DK8HCuvWNyHHg8enmbmmf1ue4AeeF3GDw&usqp=CAU"),
                      ),
                      title: const Text(
                        "Vera Drozdova 2 st",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      ),
                      subtitle: const Text(
                        "Ui/Ux Designer \n17 h",
                        style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w400,
                            color: Colors.white),
                      ),
                      trailing: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.more_vert,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        right: 15,
                        left: 15,
                        // top: 10
                      ),
                      child: Container(
                        width: double.infinity,
                        height: 250,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(
                                    "https://img.freepik.com/premium-photo/image-colorful-galaxy-sky-generative-ai_791316-9864.jpg?w=1380"))),
                      ),
                    ),
                  ],
                ),
              );
            },
            itemCount: provider.data!.home!.length,
          );
        }
      },
    );
  }
}
