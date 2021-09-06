class CommentsModel {
  final String email;
  final String comment;

  CommentsModel({required this.email, required this.comment});

  factory CommentsModel.fromJson(Map<String, dynamic> json){
    return CommentsModel(email: json['user_email'], comment: json['comment']);
  }
}