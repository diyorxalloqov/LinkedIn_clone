import 'package:flutter/material.dart';

class Posts extends StatelessWidget {
  const Posts({super.key});

  @override
  Widget build(BuildContext context) {
    return Text("Posts");
  }
}

// import 'package:flutter/material.dart';

// class Posts extends StatelessWidget {
//   const Posts({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Column(children: [
//       CircleAvatar(backgroundImage: AssetImage("assets/logo.png")),
//       Center(
//         child: Text(
//           "Postpage",
//           style: TextStyle(color: Colors.amber[50]),
//         ),
//       ),
//       ListTile(
//         leading: CircleAvatar(backgroundImage: AssetImage("assets/image.png")),
//         title: Text(
//           "Shohjahon Nasullayev",
//           style: TextStyle(color: Colors.amber[50]),
//         ),
//         subtitle: Text(
//           "nima gap kuntecha",
//           style: TextStyle(color: Colors.amber[200]),
//         ),
//       ),
//       ListTile(
//           subtitle: Text(
//             "qalashshing jiyan",
//             style: TextStyle(color: Colors.amber[200]),
//           ),
//           leading:
//               CircleAvatar(backgroundImage: AssetImage("assets/image.png")),
//           title: Text(
//             "Cristiano Ronaldo",
//             style: TextStyle(color: Colors.amber[50]),
//           )),
//       ListTile(
//           subtitle: Text(
//             "qalashshing jiyan",
//             style: TextStyle(color: Colors.amber[200]),
//           ),
//           leading:
//               CircleAvatar(backgroundImage: AssetImage("assets/image.png")),
//           title: Text(
//             "Cristiano Ronaldo",
//             style: TextStyle(color: Colors.amber[50]),
//           ))
//     ]);
//   }
// }
