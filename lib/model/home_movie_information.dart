class HomeMovieInformationModel {

  final String id;
  final String movieName;
  final String imageUrl;
  final String directorName;
  final String imdbRate;
  final String published;
  final String movieTime;
  final String categoryName;
  final String imdbRank;
  final String genreName;

  HomeMovieInformationModel({
    required this.id,
    required this.movieName,
    required this.imageUrl,
    required this.directorName,
    required this.imdbRate,
    required this.published,
    required this.movieTime,
    required this.categoryName,
    required this.imdbRank,
    required this.genreName,
  });

  factory HomeMovieInformationModel.fromJson(Map<String, dynamic> json){
    return HomeMovieInformationModel(
      id: json['id'],
      movieName: json['movie_name'],
      imageUrl: json['image_url'],
      directorName: json['director_name'],
      imdbRate: json['imdb_rate'],
      published: json['published'],
      movieTime: json['movie_time'],
      categoryName: json['category_name'],
      imdbRank: json['imdb_rank'],
      genreName: json['genre_name'],
    );
  }
}