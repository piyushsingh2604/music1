import 'package:flutter/material.dart';
import 'package:music1/Model/mainModel.dart';

class HomeBanner extends StatelessWidget {
  final List<Model> BannerData = [
    Model(
        id: 1,
        albumname: 'Sound of sky',
        name: 'Piano Gyus',
        imageUrl:
            'https://i.scdn.co/image/ab67616d00001e0277dffd4540a35949b1c3f932'),
    Model(
        id: 2,
        name: 'The Beatles',
        albumname: 'Epic',
        imageUrl:
            'https://t4.ftcdn.net/jpg/05/54/05/73/360_F_554057378_h4p5AQwS2QE2ZOzPbXKHSnVCuxXfXMx1.jpg'),
    Model(
        id: 3,
        name: 'Michael Jackson',
        albumname: 'Cool',
        imageUrl:
            'https://img.freepik.com/free-psd/music-album-banner-template-with-photo-dust-effect_23-2148742113.jpg'),
    Model(
        id: 4,
        name: 'Elvis Presley',
        albumname: 'Dope',
        imageUrl:
            'https://img.freepik.com/free-psd/music-album-horizontal-banner-template_23-2148879489.jpg'),
    Model(
        id: 5,
        name: 'Elton John',
        albumname: 'Blood',
        imageUrl:
            'https://mir-s3-cdn-cf.behance.net/project_modules/hd/61e0c0128744959.615c9742c69eb.jpg'),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 200,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: BannerData.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Container(
                      height: 200,
                      width: 230,
                      decoration: BoxDecoration(
                          color: Color(0xFF181B2C),
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 130,
                            width: 230,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(
                                        BannerData[index].imageUrl),
                                    fit: BoxFit.cover),
                                borderRadius: BorderRadius.circular(10)),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 3, top: 10),
                            child: Text(
                              "${BannerData[index].albumname}",
                              style: TextStyle(
                                  color: Color.fromARGB(205, 255, 255, 255),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 3, top: 3),
                            child: Text(
                              "${BannerData[index].name}",
                              style: TextStyle(
                                  color: Color.fromARGB(137, 255, 255, 255),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 10),
                            ),
                          ),
                        ],
                      )),
                );
              }),
        ),
      ],
    );
  }
}
