import 'package:flutter/material.dart';
import 'package:movie_application/model/comments_model.dart';

class CommentsUI extends StatelessWidget {
  final Size size;
  final CommentsModel commentModel;
  final String movieName;

  CommentsUI({
    required this.size,
    required this.commentModel,
    required this.movieName,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(15, 10, 15, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(commentModel.email, style: TextStyle(color: Colors.amber),),
              Text(movieName, style: TextStyle(color: Colors.amber),),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(15,10,15,5),
          padding: EdgeInsets.all(10),
          alignment: Alignment.topLeft,
          width: size.width,
          height: size.height * 0.12,
          decoration: BoxDecoration(
            color: Colors.grey[900],
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                topRight: Radius.circular(20)
            ),
          ),
          child: SingleChildScrollView(
              child: Text(commentModel.comment,
                style: TextStyle(color: Colors.white, fontSize: 12),)),
        ),
      ],
    );
  }
}