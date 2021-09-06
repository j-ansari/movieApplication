class GenreModel {
  final String id;
  final String genreName;

  GenreModel({required this.id, required this.genreName});

  factory GenreModel.fromJson(Map<String, dynamic> json){
    return GenreModel(
      id: json['id'],
      genreName: json['genre_name'],
    );
  }
}