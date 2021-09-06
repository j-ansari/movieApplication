import 'package:flutter/material.dart';
import 'package:movie_application/provider/send_comment_provider.dart';
import '../shared_preferences.dart';

class AddComment extends StatelessWidget {
  final TextEditingController textController = TextEditingController();
  final SendCommentProvider sendCommentProvider;
  final String movieItemId;
  final Size size;

  AddComment({
    required this.sendCommentProvider,
    required this.movieItemId,
    required this.size
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10),
      color: Colors.white,
      child: TextField(
        controller: textController,
        keyboardType: TextInputType.multiline,
        minLines: 1,
        maxLines: 5,
        style: TextStyle(color: Colors.black, fontSize: 16),
        decoration: InputDecoration(
          suffixIcon: IconButton(
            alignment: Alignment.center,
            icon: Icon(Icons.send, color: Colors.amber),
            onPressed: () async {
              if (textController.text.length > 0) {
                await sendCommentProvider.sendComment(
                  itemId: movieItemId,
                  comment: textController.text,
                  email: UserDataPreferences.getEmail().toString(),
                );
              } else {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text('please type comment'))
                );
              }
              if (sendCommentProvider.message ==
                  '{"message":"Success","Success":"1"}') {
                await showDialog(
                  context: context,
                  builder: (context) {
                    return showSuccessDialog();
                  },
                );
              } else {
                await showDialog(
                  context: context,
                  builder: (context) {
                    return showFailedDialog();
                  },
                );
              }
            },
          ),
          hintText: 'your comment...',
          hintStyle: TextStyle(color: Colors.red, fontSize: 14),
          border: InputBorder.none,
        ),
      ),
    );
  }

  Widget showSuccessDialog() {
    return AlertDialog(
      content: Container(
        height: size.height * 0.15,
        child: Column(
          children: [
            Icon(Icons.done, color: Colors.green, size: 40,),
            Text(
              'Your comment has been successfully submitted and will be added after the final review',
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }

  Widget showFailedDialog() {
    return AlertDialog(
      content: Container(
        height: size.height * 0.15,
        child: Column(
          children: [
            Icon(Icons.close, color: Colors.red, size: 40,),
            Text('Your comment has encountered an error. Please try again',
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }

}