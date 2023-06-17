import 'package:flutter/material.dart';

class Jobs extends StatelessWidget {
  const Jobs({super.key});

  @override
  Widget build(BuildContext context) {
    Size m = MediaQuery.of(context).size;
    return ListView.builder(
        itemCount: 1,
        itemBuilder: (context, index) {
          return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: const Row(
                        children: [
                          Icon(
                            Icons.bookmark_border,
                            size: 35,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "My Jobs",
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          )
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: const Row(
                        children: [
                          Icon(
                            Icons.add_box_outlined,
                            size: 35,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Post a job",
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: m.height * 0.02,
                ),
                Column(
                  children: [
                    ListTile(
                        leading: const CircleAvatar(
                          radius: 30,
                          backgroundImage: NetworkImage(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTSLU5_eUUGBfxfxRd4IquPiEwLbt4E_6RYMw&usqp=CAU"),
                        ),
                        title: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "sswdvgfeafzdfvsdfvaedsfghdsghdsxZ",
                              style: TextStyle(color: Colors.white),
                            ),
                            SizedBox(
                              height: m.height * 0.01,
                            )
                          ],
                        ),
                        subtitle: Row(
                          children: [
                            const CircleAvatar(
                              radius: 10,
                              backgroundImage: NetworkImage(
                                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQP7ccPhAF4pcIXq7vxH1ITecr9EYyKdc_MEg&usqp=CAU"),
                            ),
                            const CircleAvatar(
                              radius: 10,
                              backgroundImage: NetworkImage(
                                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTSLU5_eUUGBfxfxRd4IquPiEwLbt4E_6RYMw&usqp=CAU"),
                            ),
                            const CircleAvatar(
                              radius: 10,
                              backgroundImage: NetworkImage(
                                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQP7ccPhAF4pcIXq7vxH1ITecr9EYyKdc_MEg&usqp=CAU"),
                            ),
                            SizedBox(
                              width: m.width * 0.02,
                            ),
                            const Text(
                              "sfdgkdkmslkfjm",
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        )),
                    Padding(
                      padding: const EdgeInsets.only(right: 35),
                      child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.amber,
                              shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.horizontal(
                                      left: Radius.circular(20),
                                      right: Radius.circular(20)))),
                          child: const Text(
                            "Try Premium for free",
                            style: TextStyle(fontSize: 18, color: Colors.black),
                          )),
                    ),
                  ],
                ),
                SizedBox(
                  height: m.height * 0.02,
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Hiring in your network",
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text("Explore relevant jobs in your network",
                          style: TextStyle(
                              fontSize: 15, color: Colors.blueGrey.shade300))
                    ],
                  ),
                ),
                ListTile(
                  leading: Image.network(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRC5MNpk5OnlGHls6-dzlH_4rXR8nkXXbGtrcw5wAVammlpbg8_aVGYj2R89HQYjbnTnFQ&usqp=CAU",
                      width: 60),
                  trailing: IconButton(
                    icon: const Icon(Icons.bookmark_border,
                        size: 30, color: Colors.white),
                    onPressed: () {},
                  ),
                  title: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Senior / Lead React Native",
                        style: TextStyle(
                            fontSize: 19,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                    ],
                  ),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "EPAM Systems",
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Uzbekistan(Remote)",
                        style: TextStyle(
                            fontSize: 13, color: Colors.blueGrey.shade200),
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      Row(
                        children: [
                          const CircleAvatar(
                            backgroundImage: NetworkImage(
                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTTcQ1GUsr-gzBmBUAAIFrZ6wLbunglGdkZsiQtVi0gvrR2ICHS-f0C7vZf-dG2dI2Q3M4&usqp=CAU"),
                          ),
                          const SizedBox(
                            width: 7,
                          ),
                          Text(
                            "1 mutual connection with the",
                            style: TextStyle(
                                fontSize: 12, color: Colors.blueGrey.shade200),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      Row(
                        children: [
                          Text(
                            "Promoted * ",
                            style: TextStyle(
                                fontSize: 12, color: Colors.blueGrey.shade200),
                          ),
                          Text(
                            " 2 applicants",
                            style: TextStyle(
                                fontSize: 12, color: Colors.blueGrey.shade200),
                          ),
                        ],
                      ),
                    ],
                  ),
                  onTap: () {},
                ),
                const Divider(
                  color: Colors.white,
                  height: 2,
                  indent: 90,
                ),
                ListTile(
                  leading: Image.network(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQvazC_3o3D7SQ5DeTCGKspZVpzM7ZhQrl2n4-lhzSKCtzVhGjxCvYy9Lb2MJpgtU0UWQI&usqp=CAU",
                      width: 60),
                  trailing: IconButton(
                    icon: const Icon(Icons.bookmark_border,
                        size: 30, color: Colors.white),
                    onPressed: () {},
                  ),
                  title: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Senior / Lead React Native",
                        style: TextStyle(
                            fontSize: 19,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                    ],
                  ),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "EPAM Systems",
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Uzbekistan(Remote)",
                        style: TextStyle(
                            fontSize: 13, color: Colors.blueGrey.shade200),
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      Row(
                        children: [
                          const CircleAvatar(
                            backgroundImage: NetworkImage(
                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTH8Og8bNM8Da8HRmo-4g1tZ0woPagnt_x5KWKt4Bqd4dL1DqFQ2q5Yde0UD5DopQqBWhU&usqp=CAU"),
                          ),
                          const SizedBox(
                            width: 7,
                          ),
                          Text(
                            "1 mutual connection with the",
                            style: TextStyle(
                                fontSize: 12, color: Colors.blueGrey.shade200),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      Row(
                        children: [
                          Text(
                            "Promoted * ",
                            style: TextStyle(
                                fontSize: 12, color: Colors.blueGrey.shade200),
                          ),
                          Text(
                            " 2 applicants",
                            style: TextStyle(
                                fontSize: 12, color: Colors.blueGrey.shade200),
                          ),
                        ],
                      ),
                    ],
                  ),
                  onTap: () {},
                ),
                const Divider(
                  color: Colors.white,
                  height: 2,
                  indent: 90,
                ),
                ListTile(
                  leading: Image.network(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQT2m3tMeY91azZQ3a9oHQWEIR8_7zhCfGpOGPWxg9h7lhhsczRvcxUs5_MF6pFttO2W9k&usqp=CAU",
                      width: 60),
                  trailing: IconButton(
                    icon: const Icon(Icons.bookmark_border,
                        size: 30, color: Colors.white),
                    onPressed: () {},
                  ),
                  title: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Senior / Lead React Native",
                        style: TextStyle(
                            fontSize: 19,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                    ],
                  ),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "EPAM Systems",
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Uzbekistan(Remote)",
                        style: TextStyle(
                            fontSize: 13, color: Colors.blueGrey.shade200),
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      Row(
                        children: [
                          const CircleAvatar(
                            backgroundImage: NetworkImage(
                                "https://www.thetimes.co.uk/imageserver/image/%2Fmethode%2Ftimes%2Fprod%2Fweb%2Fbin%2Fefb36036-e3b4-11ea-8ecd-64fc41168b69.jpg?crop=3717%2C2091%2C183%2C177&resize=1200"),
                          ),
                          const SizedBox(
                            width: 7,
                          ),
                          Text(
                            "1 mutual connection with the",
                            style: TextStyle(
                                fontSize: 12, color: Colors.blueGrey.shade200),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      Row(
                        children: [
                          Text(
                            "Promoted * ",
                            style: TextStyle(
                                fontSize: 12, color: Colors.blueGrey.shade200),
                          ),
                          Text(
                            " 2 applicants",
                            style: TextStyle(
                                fontSize: 12, color: Colors.blueGrey.shade200),
                          ),
                        ],
                      ),
                    ],
                  ),
                  onTap: () {},
                ),
                const Divider(
                  color: Colors.white,
                  height: 2,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Show all",
                          style: TextStyle(fontSize: 20, color: Colors.blue),
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.arrow_forward,
                              color: Colors.blue,
                            ))
                      ],
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Recomended for you",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 30),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                SizedBox(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.3,
                  child: Center(
                    child: Column(
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height * 0.1,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(
                                      "https://media.istockphoto.com/id/1296302942/video/front-view-of-hacker-man-hacking-online-web-site-or-engaging-hacking-into-security-systems.jpg?s=640x640&k=20&c=0UGAEMfa_ypC8HNDoBYwOj59oOOk_5BpwDfx8E04Pus="))),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          "Want more jobs ?",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                              fontSize: 28),
                        ),
                        SizedBox(
                          height: m.height * 0.02,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: m.height * 0.04),
                          child: const Text(
                              "Search for jobs and we'll serve recommendations\n \t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t that match your criteria",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 15)),
                        ),
                        SizedBox(
                          height: m.height * 0.02,
                        ),
                        TextButton(
                            onPressed: () {},
                            child: const Text(
                              "Search job",
                              style:
                                  TextStyle(fontSize: 25, color: Colors.blue),
                            ))
                      ],
                    ),
                  ),
                ),
              ]);
        });
  }
}
