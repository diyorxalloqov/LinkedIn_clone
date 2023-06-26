import 'package:flutter/material.dart';
import 'package:linkedin/provider/myNetwork_provider.dart';
import 'package:provider/provider.dart';

class MyNetwork extends StatelessWidget {
  const MyNetwork({super.key});

  @override
  Widget build(BuildContext context) {
    double m_h = MediaQuery.of(context).size.height;
    double m_w = MediaQuery.of(context).size.width;
    var provider = Provider.of<MynetworkProvider>(context);
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
          return SingleChildScrollView(
            child: Column(
              children: [
                Card(
                  color: const Color(0xff042649),
                  child: ListTile(
                    title: const Text(
                      "Manage my network",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff0A66C2)),
                    ),
                    trailing: IconButton(
                      icon: const Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                      ),
                      onPressed: () {},
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Card(
                  color: const Color(0xff042649),
                  child: ListTile(
                    title: const Text(
                      "Invitation",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff0A66C2)),
                    ),
                    trailing: IconButton(
                      icon: const Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                      ),
                      onPressed: () {},
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      const Text(
                        "People you may know from Lomonosov Moscow State University",
                        style: TextStyle(color: Colors.white, fontSize: 17),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        height: m_h,
                        width: m_w,
                        child: GridView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(
                              parent: ScrollPhysics()),
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                  mainAxisExtent: 236, crossAxisCount: 2),
                          itemBuilder: (context, index) {
                            return Column(
                              children: [
                                SizedBox(
                                  width: 180,
                                  height: m_h * 0.275,
                                  child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      Positioned(
                                        top: 4,
                                        child: InkWell(
                                          onTap: () {},
                                          child: Image.asset(
                                            "assets/Head.png",
                                            height: 62,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 5, top: 60, right: 5),
                                        child: InkWell(
                                          onTap: () {},
                                          child: Container(
                                            width: 182,
                                            height: 180,
                                            color: const Color(0xff17162F),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                          top: 15,
                                          child: CircleAvatar(
                                            backgroundImage: NetworkImage(
                                                provider
                                                    .data!.myNetwork![index].img
                                                    .toString()),
                                            radius: 40,
                                            backgroundColor: Colors.green,
                                          )),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(top: 100),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Text(
                                              provider
                                                  .data!.myNetwork![index].title
                                                  .toString(),
                                              style: const TextStyle(
                                                  color: Colors.white),
                                            ),
                                            const SizedBox(
                                              height: 5,
                                            ),
                                            const Text(
                                              "Junior Flutter Developer",
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                            const SizedBox(
                                              height: 5,
                                            ),
                                            const Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                CircleAvatar(
                                                  backgroundImage: AssetImage(
                                                      "assets/image.png"),
                                                ),
                                                SizedBox(
                                                  width: 10,
                                                ),
                                                Text(
                                                  "Uzbekistan \nTashkent State ...",
                                                  style: TextStyle(
                                                      color: Colors.white),
                                                )
                                              ],
                                            ),
                                            ElevatedButton(
                                                onPressed: () {},
                                                style: ElevatedButton.styleFrom(
                                                    backgroundColor:
                                                        const Color(0xff17162F),
                                                    foregroundColor:
                                                        Colors.blue,
                                                    side: const BorderSide(
                                                        color: Colors.blue),
                                                    fixedSize: Size(
                                                        m_w * 0.33, m_h * 0.01),
                                                    shape: const RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius.horizontal(
                                                                left: Radius
                                                                    .circular(
                                                                        20),
                                                                right: Radius
                                                                    .circular(
                                                                        20)))),
                                                child: const Text("Connect"))
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            );
                          },
                          itemCount: provider.data!.myNetwork!.length,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          );
        }
      },
    );
  }
}
