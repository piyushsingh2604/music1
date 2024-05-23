import 'package:flutter/material.dart';
import 'package:music1/Widget/Loading.dart';

class DrawerList extends StatefulWidget {
  const DrawerList({super.key});

  @override
  State<DrawerList> createState() => _DrawerListState();
}

class _DrawerListState extends State<DrawerList> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 250,
            width: MediaQuery.of(context).size.width,
            color: Color.fromARGB(255, 55, 56, 64),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Container(
                    height: 60,
                    width: 60,
                    child: Image.asset(
                      'assets/Muse_Music_App_Logo.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 50, top: 5),
                  child: Text(
                    "Music1",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 40, right: 40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        child: Text(
                          "  328 Songs",
                          style: TextStyle(
                              color: Color.fromARGB(198, 255, 255, 255),
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                      Container(
                        height: 40,
                        width: 50,
                        child: Text(
                          "    52 Albums",
                          style: TextStyle(
                              color: Color.fromARGB(198, 255, 255, 255),
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                      Container(
                        height: 40,
                        width: 40,
                        child: Text(
                          "  87 Artists",
                          style: TextStyle(
                              color: Color.fromARGB(198, 255, 255, 255),
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Expanded(
              child: Container(
            width: double.infinity,
            color: Color.fromARGB(255, 19, 21, 35),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  ListTile(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Loading(),
                          ));
                    },
                    leading: Icon(
                      Icons.color_lens_rounded,
                      color: Color(0xFFD9519D),
                    ),
                    title: Text(
                      "Themes",
                      style: TextStyle(
                          color: const Color.fromARGB(217, 255, 255, 255),
                          fontSize: 15),
                    ),
                  ),
                  Divider(
                    height: 10,
                    indent: 56,
                    color: Colors.grey,
                    thickness: 0.3,
                  ),
                  ListTile(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Loading(),
                          ));
                    },                  leading: Icon(
                      Icons.cut,
                      color: Color(0xFFD9519D),
                    ),
                    title: Text(
                      "Ringtone Cutter",
                      style: TextStyle(
                          color: const Color.fromARGB(217, 255, 255, 255),
                          fontSize: 15),
                    ),
                  ),
                  Divider(
                    height: 10,
                    indent: 56,
                    color: Colors.grey,
                    thickness: 0.3,
                  ),
                  ListTile(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Loading(),
                          ));
                    },                  leading: Icon(
                      Icons.timer,
                      color: Color(0xFFD9519D),
                    ),
                    title: Text(
                      "Sleep Time",
                      style: TextStyle(
                          color: const Color.fromARGB(217, 255, 255, 255),
                          fontSize: 15),
                    ),
                  ),
                  Divider(
                    height: 10,
                    indent: 56,
                    color: Colors.grey,
                    thickness: 0.3,
                  ),
                  ListTile(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Loading(),
                          ));
                    },                  leading: Icon(
                      Icons.timeline_rounded,
                      color: Color(0xFFD9519D),
                    ),
                    title: Text(
                      "Equliser",
                      style: TextStyle(
                          color: const Color.fromARGB(217, 255, 255, 255),
                          fontSize: 15),
                    ),
                  ),
                  Divider(
                    height: 10,
                    indent: 56,
                    color: Colors.grey,
                    thickness: 0.3,
                  ),
                  ListTile(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Loading(),
                          ));
                    },                  leading: Icon(
                      Icons.drive_eta,
                      color: Color(0xFFD9519D),
                    ),
                    title: Text(
                      "Drive Mode",
                      style: TextStyle(
                          color: const Color.fromARGB(217, 255, 255, 255),
                          fontSize: 15),
                    ),
                  ),
                  Divider(
                    height: 10,
                    indent: 56,
                    color: Colors.grey,
                    thickness: 0.3,
                  ),
                  ListTile(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Loading(),
                          ));
                    },                  leading: Icon(
                      Icons.folder_copy,
                      color: Color(0xFFD9519D),
                    ),
                    title: Text(
                      "Hidden Folders",
                      style: TextStyle(
                          color: const Color.fromARGB(217, 255, 255, 255),
                          fontSize: 15),
                    ),
                  ),
                  Divider(
                    height: 10,
                    indent: 56,
                    color: Colors.grey,
                    thickness: 0.3,
                  ),
                  ListTile(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Loading(),
                          ));
                    },                  leading: Icon(
                      Icons.radio_rounded,
                      color: Color(0xFFD9519D),
                    ),
                    title: Text(
                      "Scan Media",
                      style: TextStyle(
                          color: const Color.fromARGB(217, 255, 255, 255),
                          fontSize: 15),
                    ),
                  ),
                  Divider(
                    height: 10,
                    indent: 56,
                    color: Colors.grey,
                    thickness: 0.3,
                  ),
                ],
              ),
            ),
          ))
        ],
      ),
    );
  }
}
