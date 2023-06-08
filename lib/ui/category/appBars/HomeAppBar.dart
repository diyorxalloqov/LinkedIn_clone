import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color.fromRGBO(3, 26, 49, 1),
      leading: const Padding(
        padding: EdgeInsets.only(left: 10),
        child: CircleAvatar(
            backgroundImage: NetworkImage(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSI8DK8HCuvWNyHHg8enmbmmf1ue4AeeF3GDw&usqp=CAU")),
      ),
      actions: [
        SizedBox(
          height: 20,
          width: 290,
          child: TextFormField(
              decoration: InputDecoration(
                  fillColor: const Color(0xffDCE6F1),
                  filled: true,
                  suffixIcon: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.qr_code_scanner),
                    color: Color(0xff031A31),
                  ),
                  prefixIcon: Icon(
                    Icons.search,
                    color: Color(0xff585C60),
                  ),
                  hintText: 'Search',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)))),
        ),
        IconButton(onPressed: () {}, icon: Icon(Icons.chat))
      ],
    );
  }
}