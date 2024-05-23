class Model {
  final int id;
  final String name;
  final String albumname;
  final String imageUrl;

  Model({
    required this.id,
    required this.name,
    required this.albumname,
    required this.imageUrl,
  });
}

class SongsModel {
  final int id;
  final String name;
  final String albumname;
  final String imageUrl;
  final String ?song;

  SongsModel({
    required this.id,
    required this.name,
    required this.albumname,
    required this.imageUrl,
    required this.song,
  });
}





class songecollaction {
  final String? songs;

  songecollaction({required this.songs});
}
