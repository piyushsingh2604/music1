import 'package:flutter/material.dart';
import 'package:music1/Screens/drawerList.dart';
import 'package:music1/Widget/allSongs.dart';
import 'package:music1/Widget/homeBanner.dart';
import 'package:music1/Widget/playlistBanner.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF181B2C),
      drawer: DrawerList(),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFF181B2C),
        iconTheme: IconThemeData(size: 30, color: Colors.white),
        actions: [
          Padding(
            padding: const EdgeInsets.only(
              right: 20,
            ),
            child: InkWell(
              onTap: () {},
              child: Container(
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 20),
                      child: Icon(
                        Icons.search,
                        size: 23,
                        color: Color(0xFF585A66),
                      ),
                    ),
                    Text(
                      "Search album song",
                      style: TextStyle(
                          color: Color(0xFF585A66),
                          fontWeight: FontWeight.w500),
                    )
                  ],
                ),
                width: 240,
                height: 35,
                decoration: BoxDecoration(
                    color: Color(0xFF383B49),
                    borderRadius: BorderRadius.circular(30)),
              ),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30, right: 160),
              child: Text(
                "Hot Recommended",
                style: TextStyle(color: Colors.white, fontSize: 14),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5),
              child: HomeBanner(),
            ),
            Divider(
              thickness: 0.2,
              endIndent: 20,
              indent: 20,
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 14, right: 10, top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Playlist",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "View All",
                      style: TextStyle(
                          color: Color.fromARGB(255, 207, 106, 106),
                          fontSize: 11),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            PlaylistBanner(),
             SizedBox(
              height: 15,
            ),
             Divider(
              thickness: 0.2,
              endIndent: 20,
              indent: 20,
              height: 10,
            ),
             Padding(
              padding: const EdgeInsets.only(left: 14, right: 10, top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Recently added",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "View All",
                      style: TextStyle(
                          color: Color.fromARGB(255, 207, 106, 106),
                          fontSize: 11),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            AllSongeWidget()
          ],
        ),
      ),
    );
  }
}
