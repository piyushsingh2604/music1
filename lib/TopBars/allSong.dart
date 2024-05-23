import 'dart:convert';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:music1/Model/ArtistsModalApi.dart';
import 'package:http/http.dart' as http;
import 'package:music1/Model/mainModel.dart';

class ApiService {
  final String apiUrl = "https://dummyjson.com/users";

  Future<List<Artists>> fetchUsers() async {
    final response = await http.get(Uri.parse(apiUrl));

    if (response.statusCode == 200) {
      List<dynamic> body = jsonDecode(response.body)['users'];
      List<Artists> users =
          body.map((dynamic item) => Artists.fromJson(item)).toList();
      return users;
    } else {
      throw Exception('Failed to load users');
    }
  }
}

class AllSongs extends StatefulWidget {
  @override
  _AllSongsState createState() => _AllSongsState();
}

class _AllSongsState extends State<AllSongs> {
  late Future<List<Artists>> futureUsers;

  @override
  void initState() {
    super.initState();
    futureUsers = ApiService().fetchUsers();
  }

  List<songecollaction> songecollactionList = [
    songecollaction(songs: 'theme_01.mp3'),
    songecollaction(songs: 'them_02.mp3'),
    songecollaction(
        songs:
            'byte-blast-8-bit-arcade-music-background-music-for-video-24-second-208776.mp3'),
    songecollaction(
        songs:
            'carol-of-the-bells-xmas-background-hip-hop-music-for-video-60-second-178242.mp3'),
    songecollaction(
        songs:
            'cruise-background-music-for-video-vlog-summer-tropical-house-31-sec-207805.mp3'),
    songecollaction(
        songs:
            'dance-gabino-mexico-background-short-music-for-video-vlog-36-second-198416.mp3'),
    songecollaction(
        songs:
            'epic-background-music-for-short-video-dramatic-orchestral-instrumental-176718.mp3'),
    songecollaction(
        songs: 'indian-music-with-sitar-tanpura-and-sarangi-74577.mp3'),
    songecollaction(
        songs:
            'instrumental-background-music-for-short-video-stories-blog-37-seconds-199949.mp3'),
    songecollaction(
        songs:
            'odessa-bulgarish-background-funny-music-for-video-reggaeton-version-180420.mp3'),
    songecollaction(songs: 'stomps-and-claps-percussion-and-rhythm-141190.mp3'),
    songecollaction(songs: 'tamil-comedy-music-13957.mp3'),
    songecollaction(
        songs:
            'we-wish-you-a-merry-christmas-xmas-background-short-music-30-second-178228.mp3'),
    songecollaction(
        songs:
            'cruise-background-music-for-video-vlog-summer-tropical-house-31-sec-207805.mp3'),
    songecollaction(songs: 'tamil-comedy-music-13957.mp3'),
    songecollaction(
        songs:
            'byte-blast-8-bit-arcade-music-background-music-for-video-24-second-208776.mp3'),
    songecollaction(songs: 'theme_01.mp3'),
    songecollaction(
        songs: 'indian-music-with-sitar-tanpura-and-sarangi-74577.mp3'),
    songecollaction(songs: 'stomps-and-claps-percussion-and-rhythm-141190.mp3'),
  ];
  final player = AudioPlayer();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF181B2C),
      body: Center(
        child: FutureBuilder<List<Artists>>(
          future: futureUsers,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return CircularProgressIndicator();
            } else if (snapshot.hasError) {
              return Text('Error: ${snapshot.error}');
            } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
              return Text('No users found');
            } else {
              return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (context, index) {
                  Artists user = snapshot.data![index];
                  return ListTile(
                      leading: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(user.artistsImage),
                                fit: BoxFit.cover),
                            borderRadius: BorderRadius.circular(300)),
                      ),
                      title: Text(
                        '${user.Name} ${user.ArtistsName}',
                        style: TextStyle(
                            color: Color.fromARGB(180, 255, 255, 255),
                            fontSize: 13),
                      ),
                      subtitle: Text(
                        user.username,
                        style: TextStyle(
                            color: Color.fromARGB(128, 255, 255, 255),
                            fontSize: 11),
                      ),
                      trailing: IconButton(
                          onPressed: () {
                            player.play(
                                AssetSource(songecollactionList[index].songs!));
                            final snackBar = SnackBar(
                              content: Text( user.username,),
                              action: SnackBarAction(
                                label: 'Stop',
                                onPressed: () {
                                  player.stop();
                                },
                              ),
                            );

                            ScaffoldMessenger.of(context)
                                .showSnackBar(snackBar);
                          },
                          icon: Icon(
                            Icons.play_circle_outline_rounded,
                            color: Color(0xFFD9519D),
                          )));
                },
              );
            }
          },
        ),
      ),
    );
  }
}
