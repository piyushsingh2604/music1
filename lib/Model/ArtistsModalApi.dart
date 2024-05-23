// user.dart
class Artists {
  final int id;
  final String Name;
  final String ArtistsName;
  final String username;
    final String artistsImage;


  Artists({
    required this.id,
    required this.Name,
    required this.ArtistsName,
    required this.username,
    required this.artistsImage,
  });

  factory Artists.fromJson(Map<String, dynamic> json) {
    return Artists(
      id: json['id'],
      Name: json['firstName'],
      ArtistsName: json['lastName'],
      username: json['username'],
      artistsImage: json['image']
    );
  }
}
