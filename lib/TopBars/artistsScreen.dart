import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:music1/Model/ArtistsInfoModel.dart';

class ArtistsScreen extends StatefulWidget {
  const ArtistsScreen({super.key});

  @override
  State<ArtistsScreen> createState() => _ArtistsScreenState();
}

class _ArtistsScreenState extends State<ArtistsScreen> {
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
    Info(album: "4 Albums", song: "38 Songs"),
    Info(album: "8 Albums", song: "33 Songs"),
    Info(album: "2 Albums", song: "20 Songs"),
    Info(album: "2 Albums", song: "10 Songs"),
    Info(album: "1 Albums", song: "5 Songs"),
    Info(album: "6 Albums", song: "60 Songs"),
    Info(album: "5 Albums", song: "38 Songs"),
    Info(album: "6 Albums", song: "43 Songs"),
    Info(album: "4 Albums", song: "21 Songs"),
    Info(album: "3 Albums", song: "19 Songs"),
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
            return ListView.builder(
              itemCount: ArtistsInfoList.length,
              itemBuilder: (context, index) {
                if (index >= ArtistsInfoList.length) {
                  return Container();
                }

                bool withinInfoListBounds = index < infoList.length;

                String albumInfo = withinInfoListBounds ? infoList[index].album ?? '' : 'N/A';
                String songInfo = withinInfoListBounds ? infoList[index].song ?? '' : 'N/A';

                return Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: ListTile(
                    leading: Container(
                      height: 65,
                      width: 60,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white, width: 0.4),
                        image: DecorationImage(
                          image: NetworkImage(
                            ArtistsInfoList[index].avatar ?? '',
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    title: Text(
                      ArtistsInfoList[index].name ?? 'Unknown Artist',
                      style: TextStyle(
                        color: Color.fromARGB(208, 255, 255, 255),
                        fontSize: 19,
                      ),
                    ),
                    subtitle: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: albumInfo,
                            style: TextStyle(
                              color: Color.fromARGB(168, 255, 255, 255),
                              fontSize: 10,
                            ),
                          ),
                          TextSpan(
                            text: "    .    ",
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                          TextSpan(
                            text: songInfo,
                            style: TextStyle(
                              color: Color.fromARGB(168, 255, 255, 255),
                              fontSize: 10,
                            ),
                          ),
                        ],
                      ),
                    ),
                    trailing: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.more_vert_outlined, color: Colors.white),
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
