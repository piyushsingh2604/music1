import 'package:flutter/material.dart';
import 'package:music1/Screens/drawerList.dart';
import 'package:music1/TopBars/albums.dart';
import 'package:music1/TopBars/allSong.dart';
import 'package:music1/TopBars/artistsScreen.dart';

class AppBarWidget extends StatefulWidget {
  const AppBarWidget({super.key});

  @override
  State<AppBarWidget> createState() => _AppBarWidgetState();
}

class _AppBarWidgetState extends State<AppBarWidget> {
  @override
  Widget build(BuildContext context) => DefaultTabController(
        length: 3,
        child: Scaffold(
            drawer: DrawerList(),
            backgroundColor: Color(0xFF181B2C),
            appBar: AppBar(
              iconTheme: IconThemeData(color: Colors.white),
              title: Text(
                "Songs",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              centerTitle: true,
              backgroundColor: Color(0xFF181B2C),
              bottom: TabBar(indicatorColor: Color(0xFFD9519D),
              dividerColor:  Color(0xFF181B2C),
              unselectedLabelColor: Colors.white,
                tabs: [
                  Tab(
                    text: "All Songs",
                  ),
                  Tab(
                    text: "Artists",
                  ),
                   Tab(
                    text: "Albums",
                  )
                ],
              ),
              actions: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.search,
                      color: const Color.fromARGB(177, 255, 255, 255),
                    ))
              ],
            ),
            body: Expanded(
              child: TabBarView(children: [
               AllSongs(),
                ArtistsScreen(),
                AlbumsScreen(),
              ]),
            )),
      );
}
