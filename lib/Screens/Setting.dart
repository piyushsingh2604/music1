import 'package:flutter/material.dart';
import 'package:music1/Screens/drawerList.dart';
import 'package:music1/Widget/Loading.dart';

class Setting extends StatefulWidget {
  const Setting({super.key});

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerList(),
      backgroundColor: Color(0xFF181B2C),
      appBar: AppBar(
        title: Text(
          "Settings",
          style: TextStyle(
              color: Color.fromARGB(219, 255, 255, 255),
              fontSize: 18,
              fontWeight: FontWeight.w400),
        ),
        centerTitle: true,
        iconTheme: IconThemeData(color: Color.fromARGB(219, 255, 255, 255)),
        elevation: 0,
        backgroundColor: Color(0xFF181B2C),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          ListTile(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Loading(),
                  ));
            },
            leading: Icon(
              Icons.tv,
              color: Color(0xFFD9519D),
            ),
            title: Text(
              "Display",
              style: TextStyle(
                  color: const Color.fromARGB(217, 255, 255, 255),
                  fontSize: 14),
            ),
          ),
          Divider(
            height: 10,
            indent: 55,
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
            },
            leading: Icon(
              Icons.speaker,
              color: Color(0xFFD9519D),
            ),
            title: Text(
              "Audio",
              style: TextStyle(
                  color: const Color.fromARGB(217, 255, 255, 255),
                  fontSize: 14),
            ),
          ),
          Divider(
            height: 10,
            indent: 55,
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
            },
            leading: Icon(
              Icons.headphones_rounded,
              color: Color(0xFFD9519D),
            ),
            title: Text(
              "Headset",
              style: TextStyle(
                  color: const Color.fromARGB(217, 255, 255, 255),
                  fontSize: 14),
            ),
          ),
          Divider(
            height: 10,
            indent: 55,
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
            },
            leading: Icon(
              Icons.lock,
              color: Color(0xFFD9519D),
            ),
            title: Text(
              "LockScreen",
              style: TextStyle(
                  color: const Color.fromARGB(217, 255, 255, 255),
                  fontSize: 14),
            ),
          ),
          Divider(
            height: 10,
            indent: 55,
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
            },
            leading: Icon(
              Icons.more_vert_rounded,
              color: Color(0xFFD9519D),
            ),
            title: Text(
              "Advanced",
              style: TextStyle(
                  color: const Color.fromARGB(217, 255, 255, 255),
                  fontSize: 14),
            ),
          ),
          Divider(
            height: 10,
            indent: 55,
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
            },
            leading: Icon(
              Icons.settings,
              color: Color(0xFFD9519D),
            ),
            title: Text(
              "Other",
              style: TextStyle(
                  color: const Color.fromARGB(217, 255, 255, 255),
                  fontSize: 14),
            ),
          ),
          Divider(
            height: 10,
            indent: 55,
            color: Colors.grey,
            thickness: 0.3,
          ),
         
        ],
      ),
    );
  }
}
