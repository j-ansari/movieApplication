import 'package:hive/hive.dart';

part 'favorite_adapter.g.dart';

@HiveType(typeId: 1)
class FavoriteModel {

  @HiveField(0)
  final String movieName;

  @HiveField(1)
  final String imageUrl;

  @HiveField(2)
  final String directorName;

  @HiveField(3)
  final String published;

  @HiveField(4)
  final String movieTime;


  FavoriteModel({
    required this.movieName,
    required this.imageUrl,
    required this.directorName,
    required this.published,
    required this.movieTime,
  });

}