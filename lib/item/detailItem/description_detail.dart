import 'package:flutter/material.dart';
import 'package:movie_application/model/detail_model.dart';

class DescriptionDetail extends StatelessWidget {
  final Size size;
  final DetailModel detailModel;

  DescriptionDetail({required this.size, required this.detailModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      width: size.width,
      height: size.height * 0.1,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.grey,
      ),
      child: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Text('Description:'),
          SizedBox(height: 3),
          Text(detailModel.description),
        ],
      ),
    );
  }
}