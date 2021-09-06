class BuyAccountModel {

  final String id;
  final String price;
  final String month;

  BuyAccountModel({
    required this.id,
    required this.price,
    required this.month,
  });

  factory BuyAccountModel.fromJson(Map<String, dynamic> json){
    return BuyAccountModel(
      id: json['id'],
      price: json['price'],
      month: json['month'],
    );
  }
}