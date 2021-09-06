class DetailModel {
  final String id;
  final String itemId;
  final String description;
  final String imageUrl;
  final String playMovieUrl;

  DetailModel({
    required this.id,
    required this.itemId,
    required this.description,
    required this.imageUrl,
    required this.playMovieUrl,
  });

  factory DetailModel.fromJson(Map<String, dynamic> json){
    return DetailModel(
      id: json['id'],
      itemId: json['item_id'],
      description: json['description'],
      imageUrl: json['image_url'],
      playMovieUrl: json['play_movie_url'],
    );
  }
}