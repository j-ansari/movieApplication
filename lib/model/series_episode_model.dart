class SeriesEpisodeModel {

  final String id;
  final String seasonId;
  final String episodeDetail;
  final String episodeTime;
  final String playUrlEpisode;

  SeriesEpisodeModel({
    required this.id,
    required this.seasonId,
    required this.episodeDetail,
    required this.episodeTime,
    required this.playUrlEpisode,
  });

  factory SeriesEpisodeModel.fromJson(Map<String, dynamic> json){
    return SeriesEpisodeModel(
      id: json['id'],
      seasonId: json['season_id'],
      episodeDetail: json['episode_detail'],
      episodeTime: json['episode_time'],
      playUrlEpisode: json['play_url_episode'],
    );
  }
}