import 'package:flutter/material.dart';

class MyNetwork extends StatelessWidget {
  const MyNetwork({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        // crossAxisAlignment: CrossAxisAlignment.start,
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
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  child: GridView.builder(
                    physics:
                       const NeverScrollableScrollPhysics(parent: ScrollPhysics()),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2),
                    itemBuilder: (context, index) {
                      return Stack(
                          // alignment: Alignment.,
                          textDirection: TextDirection.rtl,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Container(
                                // width: 182,
                                // height: 295,
                                color: Colors.white,
                              ),
                            ),
                            Positioned(
                                child: Container(
                              color: Colors.green,
                              width: 100,
                              height: 50,
                            )),
                            Positioned(
                                child: Container(
                              color: Colors.red,
                              width: 50,
                              height: 50,
                            )),
                          ]);
                    },
                    itemCount: 15,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
