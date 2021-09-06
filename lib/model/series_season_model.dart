class SeriesSeasonModel {

  final String id;
  final String itemId;
  final String seasonNumber;
  final String episodeCount;
  final String imageUrl;

  SeriesSeasonModel({
    required this.id,
    required this.itemId,
    required this.seasonNumber,
    required this.episodeCount,
    required this.imageUrl,
  });

  factory SeriesSeasonModel.fromJson(Map<String, dynamic> json){
    return SeriesSeasonModel(
      id: json['id'],
      itemId: json['item_id'],
      seasonNumber: json['season_number'],
      episodeCount: json['episode_count'],
      imageUrl: json['image_url'],
    );
  }
}