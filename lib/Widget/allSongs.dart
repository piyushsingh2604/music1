import 'package:flutter/material.dart';
import 'package:music1/Model/mainModel.dart';
import 'package:audioplayers/audioplayers.dart';

class AllSongeWidget extends StatelessWidget {
  final List<SongsModel> songsList = [
    SongsModel(
        id: 1,
        name: "name",
        albumname: "Albumname",
        imageUrl: "https://i1.sndcdn.com/artworks-vViQSX1PjQn9-0-t500x500.jpg",
        song: 'theme_01.mp3'),
    SongsModel(
        id: 2,
        name: "name",
        albumname: "Albumname",
        imageUrl: "https://assets.capitalfm.com/2022/43/ed-sheeran--1666953393-editorial-short-form-0.jpg",
        song: 'them_02.mp3'),
    SongsModel(
        id: 3,
        name: "name",
        albumname: "Albumname",
        imageUrl: "https://superstarsbio.com/wp-content/uploads/2019/11/Kane-Brown.jpg",
        song:
            'byte-blast-8-bit-arcade-music-background-music-for-video-24-second-208776.mp3'),
    SongsModel(
        id: 4,
        name: "name",
        albumname: "Albumname",
        imageUrl: "https://www.hollyland.com/wp-content/uploads/2023/07/image-77-797x1024.jpeg",
        song:
            'carol-of-the-bells-xmas-background-hip-hop-music-for-video-60-second-178242.mp3'),
    SongsModel(
        id: 5,
        name: "name",
        albumname: "Albumname",
        imageUrl: "https://www.udiscovermusic.com/wp-content/uploads/2022/03/Common-GettyImages-479496666.jpg",
        song:
            'cruise-background-music-for-video-vlog-summer-tropical-house-31-sec-207805.mp3'),
    SongsModel(
        id: 6,
        name: "name",
        albumname: "Albumname",
        imageUrl: "https://ca-times.brightspotcdn.com/dims4/default/18bc32f/2147483647/strip/true/crop/898x1077+353+0/resize/375x450!/quality/75/?url=https%3A%2F%2Fcalifornia-times-brightspot.s3.amazonaws.com%2F25%2Ffc%2Fd01f00ea40608d8136f9cbbd3454%2F1321047-la-de-los-viva-pomona-photos-28.jpg",
        song:
            'dance-gabino-mexico-background-short-music-for-video-vlog-36-second-198416.mp3'),
    SongsModel(
        id: 7,
        name: "name",
        albumname: "Albumname",
        imageUrl: "https://charts-static.billboard.com/img/1971/10/michael-jackson-9to-344x344.jpg",
        song:
            'epic-background-music-for-short-video-dramatic-orchestral-instrumental-176718.mp3'),
    SongsModel(
        id: 8,
        name: "name",
        albumname: "Albumname",
        imageUrl: "https://guardian.ng/wp-content/uploads/2019/02/Wizkid.-Photo-Hunger.jpg",
        song: 'indian-music-with-sitar-tanpura-and-sarangi-74577.mp3'),
    SongsModel(
        id: 9,
        name: "name",
        albumname: "Albumname",
        imageUrl: "https://images.firstpost.com/uploads/2024/03/Untitled-design-34-2024-03-f71da0e8467dd66eaae1d6c83d5c0ea9.jpg?im=FitAndFill=(596,336)",
        song:
            'instrumental-background-music-for-short-video-stories-blog-37-seconds-199949.mp3'),
    SongsModel(
        id: 10,
        name: "name",
        albumname: "Albumname",
        imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRkgNjdPIvrgI-n4yAmbtp1OhwitaHrsahD2_EUsETnVQ&s",
        song:
            'odessa-bulgarish-background-funny-music-for-video-reggaeton-version-180420.mp3'),
    SongsModel(
        id: 11,
        name: "name",
        albumname: "Albumname",
        imageUrl: "https://upload.wikimedia.org/wikipedia/commons/thumb/5/5b/Julio_Iglesias_%28Spanje%29%2C_Bestanddeelnr_923-3697.jpg/250px-Julio_Iglesias_%28Spanje%29%2C_Bestanddeelnr_923-3697.jpg",
        song: 'stomps-and-claps-percussion-and-rhythm-141190.mp3'),
    SongsModel(
        id: 12,
        name: "name",
        albumname: "Albumname",
        imageUrl: "https://stanforddaily.com/wp-content/uploads/2020/05/960px-Aurora_RoughTradeEast_01.jpg",
        song: 'tamil-comedy-music-13957.mp3'),
    SongsModel(
        id: 13,
        name: "name",
        albumname: "Albumname",
        imageUrl: "https://i1.sndcdn.com/artworks-vViQSX1PjQn9-0-t500x500.jpg",
        song:
            'we-wish-you-a-merry-christmas-xmas-background-short-music-30-second-178228.mp3'),
    SongsModel(
        id: 14,
        name: "name",
        albumname: "Albumname",
        imageUrl: "https://i1.sndcdn.com/artworks-vViQSX1PjQn9-0-t500x500.jpg",
        song:
            'cruise-background-music-for-video-vlog-summer-tropical-house-31-sec-207805.mp3'),
    SongsModel(
        id: 15,
        name: "name",
        albumname: "Albumname",
        imageUrl: "https://i1.sndcdn.com/artworks-vViQSX1PjQn9-0-t500x500.jpg",
        song: 'tamil-comedy-music-13957.mp3'),
    SongsModel(
        id: 16,
        name: "name",
        albumname: "Albumname",
        imageUrl: "https://i1.sndcdn.com/artworks-vViQSX1PjQn9-0-t500x500.jpg",
        song:
            'byte-blast-8-bit-arcade-music-background-music-for-video-24-second-208776.mp3'),
    SongsModel(
        id: 17,
        name: "name",
        albumname: "Albumname",
        imageUrl: "https://i1.sndcdn.com/artworks-vViQSX1PjQn9-0-t500x500.jpg",
        song: 'theme_01.mp3'),
    SongsModel(
        id: 18,
        name: "name",
        albumname: "Albumname",
        imageUrl: "https://i1.sndcdn.com/artworks-vViQSX1PjQn9-0-t500x500.jpg",
        song: 'indian-music-with-sitar-tanpura-and-sarangi-74577.mp3'),
    SongsModel(
        id: 19,
        name: "name",
        albumname: "Albumname",
        imageUrl: "https://i1.sndcdn.com/artworks-vViQSX1PjQn9-0-t500x500.jpg",
        song: 'stomps-and-claps-percussion-and-rhythm-141190.mp3'),
  ];
  final player = AudioPlayer();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 400,
          child: ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: songsList.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(songsList[index].imageUrl),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(300)),
                ),
                title: Text(
                  songsList[index].albumname,
                  style: TextStyle(
                      color: const Color.fromARGB(201, 255, 255, 255),
                      fontSize: 14),
                ),
                subtitle: Text(
                  songsList[index].name,
                  style: TextStyle(
                      color: Color.fromARGB(130, 255, 255, 255), fontSize: 11),
                ),
                trailing: IconButton(
                    onPressed: () {
                      player.play(AssetSource(songsList[index].song!));
                   final snackBar = SnackBar(
                              content: Text(songsList[index].albumname),
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
                    )),
              );
            },
          ),
        ),
      ],
    );
  }
}




