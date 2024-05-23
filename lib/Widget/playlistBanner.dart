import 'package:flutter/material.dart';
import 'package:music1/Model/mainModel.dart';

class PlaylistBanner extends StatelessWidget {
  final List<Model> BannerData = [
    Model(
        id: 1,
        albumname: 'Sound of sky',
        name: 'Piano Gyus',
        imageUrl:
            'https://i.scdn.co/image/ab67616d00001e0277dffd4540a35949b1c3f932'),
    Model(
        id: 2,
        name: 'Jane',
        albumname: 'Doe',
        imageUrl:
            'https://cdn.dribbble.com/userupload/7902193/file/original-73b7b9e62e8d8be056f9af354d3ce841.jpg?resize=400x0'),
 
  Model(
        id: 3,
        name: 'Jane',
        albumname: 'Doe',
        imageUrl:
            'https://cdns-images.dzcdn.net/images/artist/8021b044a2b08963f3bc747df329e57d/500x500.jpg'),
  Model(
        id: 4,
        name: 'Jane',
        albumname: 'Doe',
        imageUrl:
            'https://fiverr-res.cloudinary.com/images/t_main1,q_auto,f_auto,q_auto,f_auto/gigs/156772226/original/11dbb81f9061a46c1e8ed002afdb02f969c6c22b/make-quality-cover-art-for-your-new-song-and-or-album.jpg'),
  Model(
        id: 5,
        name: 'Jane',
        albumname: 'Doe',
        imageUrl:
            'https://i.ytimg.com/vi/LZg_qqPX5A4/hqdefault.jpg'),
 
 
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 137,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: BannerData.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Container(
                      height: 10,
                      width: 90,
                      decoration: BoxDecoration(
                          color: Color(0xFF181B2C),
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 90,
                            width: 90,
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
                                  fontSize: 11),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 3, top: 3),
                            child: Text(
                              "${BannerData[index].name}",
                              style: TextStyle(
                                  color: Color.fromARGB(137, 255, 255, 255),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 9),
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
