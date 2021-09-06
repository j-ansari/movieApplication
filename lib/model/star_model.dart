class StarModel {

  final String id;
  final String itemId;
  final String starName;
  final String imageUrl;

  StarModel({
    required this.id,
    required this.itemId,
    required this.starName,
    required this.imageUrl,
  });

  factory StarModel.fromJson(Map<String, dynamic> json){
    return StarModel(
      id: json['id'],
      itemId: json['item_id'],
      starName: json['star_name'],
      imageUrl: json['image_url'],
    );
  }
}