import 'package:flutter/material.dart';

class Jobs extends StatelessWidget {
  const Jobs({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Column(
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
          const SizedBox(
            height: 20,
          ),
          Column(
            children: [
              const ListTile(
                  leading: CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTSLU5_eUUGBfxfxRd4IquPiEwLbt4E_6RYMw&usqp=CAU"),
                  ),
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "sswdvgfeafzdfvsdfvaedsfghdsghdsxZ",
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(
                        height: 10,
                      )
                    ],
                  ),
                  subtitle: Row(
                    children: [
                      CircleAvatar(
                        radius: 10,
                        backgroundImage: NetworkImage(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQP7ccPhAF4pcIXq7vxH1ITecr9EYyKdc_MEg&usqp=CAU"),
                      ),
                      CircleAvatar(
                        radius: 10,
                        backgroundImage: NetworkImage(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTSLU5_eUUGBfxfxRd4IquPiEwLbt4E_6RYMw&usqp=CAU"),
                      ),
                      CircleAvatar(
                        radius: 10,
                        backgroundImage: NetworkImage(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQP7ccPhAF4pcIXq7vxH1ITecr9EYyKdc_MEg&usqp=CAU"),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
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
          const SizedBox(
            height: 20,
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
                  style:
                      TextStyle(fontSize: 13, color: Colors.blueGrey.shade200),
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
          )
        ],
      ),
    );
  }
}
