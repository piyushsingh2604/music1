import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:music1/Model/ArtistsInfoModel.dart';

class AlbumsScreen extends StatefulWidget {
  const AlbumsScreen({super.key});

  @override
  State<AlbumsScreen> createState() => _AlbumsScreenState();
}

class _AlbumsScreenState extends State<AlbumsScreen> {
  List<ArtistsInfo> ArtistsInfoList = [];

  Future<List<ArtistsInfo>> getArtistsInfo() async {
    final response =
        await http.get(Uri.parse('https://api.escuelajs.co/api/v1/users'));
    var data = jsonDecode(response.body.toString());
    if (response.statusCode == 200) {
      for (Map<String, dynamic> i in data) {
        ArtistsInfoList.add(ArtistsInfo.fromJson(i));
      }
    }
    return ArtistsInfoList;
  }

  List<Info> infoList = [
    Info(album: "The Beatles", song: "38 Songs"),
    Info(album: "Michael Jackson", song: "33 Songs"),
    Info(album: "Elvis Presley", song: "20 Songs"),
    Info(album: "Halsey", song: "10 Songs"),
    Info(album: "Elton John", song: "5 Songs"),
    Info(album: "Queen", song: "60 Songs"),
    Info(album: "Madonna", song: "38 Songs"),
    Info(album: "Led Zeppelin", song: "43 Songs"),
    Info(album: "Ariana Grande", song: "21 Songs"),
    Info(album: "Justin Bieber", song: "19 Songs"),
    Info(album: "3 Albums", song: "15 Songs"),
    Info(album: "2 Albums", song: "10 Songs"),
    Info(album: "2 Albums", song: "38 Songs"),
    Info(album: "5 Albums", song: "50 Songs"),
    Info(album: "2 Albums", song: "20 Songs"),
    Info(album: "1 Albums", song: "3 Songs"),
    Info(album: "1 Albums", song: "9 Songs"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF181B2C),
      body: FutureBuilder<List<ArtistsInfo>>(
        future: getArtistsInfo(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text("Error: ${snapshot.error}"));
          } else {
            return GridView.builder(
              padding: const EdgeInsets.all(10),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, // Number of columns
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: 0.75, // Adjust as needed
              ),
              itemCount: 10,
              itemBuilder: (context, index) {
                var artistInfo = ArtistsInfoList[index];
                var info = index < infoList.length
                    ? infoList[index]
                    : Info(album: 'Unknown Albums', song: 'Unknown Songs');

                return Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: GridTile(
                    
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 80,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.white, width: 0.4),
                            image: DecorationImage(
                              image: NetworkImage(
                                artistInfo.avatar ?? '',
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          artistInfo.name ?? 'Unknown Artist',
                          style: TextStyle(
                            color: Color.fromARGB(208, 255, 255, 255),
                            fontSize: 16,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 5),
                        Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: info.album ?? '',
                                style: TextStyle(
                                  color: Color.fromARGB(168, 255, 255, 255),
                                  fontSize: 10,
                                ),
                              ),
                              TextSpan(
                                text: "      .      ",
                                style:
                                    TextStyle(color: Colors.white, fontSize: 10),
                              ),
                              TextSpan(
                                text: info.song ?? '',
                                style: TextStyle(
                                  color: Color.fromARGB(168, 255, 255, 255),
                                  fontSize: 10,
                                ),
                              ),
                            ],
                          ),
                        ),
                       
                      ],
                    ),
                  ),
                );
              },
            );
          }
        },
      ),
    );
  }
}

class Info {
  final String? song;
  final String? album;

  Info({required this.album, required this.song});
}
