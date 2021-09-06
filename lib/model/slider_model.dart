class SliderModel {
  final String id;
  final String movieName;
  final String imageUrl;

  SliderModel({
    required this.id,
    required this.movieName,
    required this.imageUrl,
  });

  factory SliderModel.fromJson(Map<String, dynamic> json){
    return SliderModel(
      id: json['id'],
      movieName: json['movie_name'],
      imageUrl: json['image_url'],
    );
  }
}