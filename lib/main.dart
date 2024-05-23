import 'package:flutter/material.dart';


import 'package:music1/Widget/bottomBar.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BottomNaviBar(),
    );
  }
}

// https://dummyjson.com/users
 


// class ApiService {
//   final String apiUrl = "https://dummyjson.com/users";

//   Future<List<Artists>> fetchUsers() async {
//     final response = await http.get(Uri.parse(apiUrl));

//     if (response.statusCode == 200) {
//       List<dynamic> body = jsonDecode(response.body)['users'];
//       List<Artists> users =
//           body.map((dynamic item) => Artists.fromJson(item)).toList();
//       return users;
//     } else {
//       throw Exception('Failed to load users');
//     }
//   }
// }

// class AllSongs extends StatefulWidget {
//   @override
//   _AllSongsState createState() => _AllSongsState();
// }

// class _AllSongsState extends State<AllSongs> {
//   late Future<List<Artists>> futureUsers;

//   @override
//   void initState() {
//     super.initState();
//     futureUsers = ApiService().fetchUsers();
//   }

//   List<songecollaction> songecollactionList = [
//     songecollaction(songs: 'theme_01.mp3'),
//     songecollaction(songs: 'them_02.mp3'),
//     songecollaction(songs: 'byte-blast-8-bit-arcade-music-background-music-for-video-24-second-208776.mp3'),
//     // Add your other songs here...
//   ];

//   final player = AudioPlayer();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color(0xFF181B2C),
//       body: Center(
//         child: FutureBuilder<List<Artists>>(
//           future: futureUsers,
//           builder: (context, snapshot) {
//             if (snapshot.connectionState == ConnectionState.waiting) {
//               return CircularProgressIndicator();
//             } else if (snapshot.hasError) {
//               return Text('Error: ${snapshot.error}');
//             } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
//               return Text('No users found');
//             } else {
//               return ListView.builder(
//                 itemCount: snapshot.data!.length,
//                 itemBuilder: (context, index) {
//                   Artists user = snapshot.data![index];
//                   return ListTile(
//                     leading: Container(
//                       height: 50,
//                       width: 50,
//                       decoration: BoxDecoration(
//                         image: DecorationImage(
//                           image: NetworkImage(user.artistsImage),
//                           fit: BoxFit.cover,
//                         ),
//                         borderRadius: BorderRadius.circular(300),
//                       ),
//                     ),
//                     title: Text(
//                       '${user.Name} ${user.ArtistsName}',
//                       style: TextStyle(
//                         color: Color.fromARGB(180, 255, 255, 255),
//                         fontSize: 13,
//                       ),
//                     ),
//                     subtitle: Text(
//                       user.username,
//                       style: TextStyle(
//                         color: Color.fromARGB(128, 255, 255, 255),
//                         fontSize: 11,
//                       ),
//                     ),
//                     trailing: IconButton(
//                       onPressed: () {
//                         player.play(
//                           AssetSource(songecollactionList[index].songs!),
//                         );
//                         final snackBar = SnackBar(
//                           content: Text(user.username),
//                           action: SnackBarAction(
//                             label: 'Stop',
//                             onPressed: () {
//                               player.stop();
//                             },
//                           ),
//                         );
//                         ScaffoldMessenger.of(context).showSnackBar(snackBar);
//                       },
//                       icon: Icon(
//                         Icons.play_circle_outline_rounded,
//                         color: Color(0xFFD9519D),
//                       ),
//                     ),
//                     onTap: () {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                           builder: (context) => DetailScreen(
//                             imageUrl: user.artistsImage,
//                             name: '${user.Name} ${user.ArtistsName}',
//                           ),
//                         ),
//                       );
//                     },
//                   );
//                 },
//               );
//             }
//           },
//         ),
//       ),
//     );
//   }
// }

// class songecollaction {
//   final String songs;
//   songecollaction({required this.songs});
// }

// class DetailScreen extends StatelessWidget {
//   final String imageUrl;
//   final String name;

//   DetailScreen({required this.imageUrl, required this.name});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(name),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Container(
//               height: 200,
//               width: 200,
//               decoration: BoxDecoration(
//                 image: DecorationImage(
//                   image: NetworkImage(imageUrl),
//                   fit: BoxFit.cover,
//                 ),
//                 borderRadius: BorderRadius.circular(100),
//               ),
//             ),
//             SizedBox(height: 20),
//             Text(
//               name,
//               style: TextStyle(fontSize: 24),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
