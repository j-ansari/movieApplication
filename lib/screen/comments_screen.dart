import 'package:flutter/material.dart';
import 'package:movie_application/provider/comments_provider.dart';
import 'package:movie_application/provider/send_comment_provider.dart';
import 'package:movie_application/widget/add_comment.dart';
import 'package:movie_application/widget/comment_ui.dart';
import 'package:provider/provider.dart';

class CommentsScreen extends StatefulWidget {
  final movieItemId;
  final String movieName;

  CommentsScreen({required this.movieItemId, required this.movieName});

  @override
  State<StatefulWidget> createState() => _CommentsScreenState();
}

class _CommentsScreenState extends State<CommentsScreen> {
  late CommentsProvider commentsProvider;
  late SendCommentProvider sendCommentProvider;

  @override
  void initState() {
    super.initState();
    commentsProvider = Provider.of<CommentsProvider>(context, listen: false);
    commentsProvider.itemIdKey = widget.movieItemId;
    commentsProvider.fetchCommentsData();
    sendCommentProvider = Provider.of<SendCommentProvider>(context, listen: false);
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Color(0xff211421),
        title: Text('Comments', style: TextStyle(color: Colors.white)),
      ),
      body: Consumer<CommentsProvider>(builder: (context, data, child) {
        return data.commentsModel.isEmpty ? Center(
            child: Text('no comment for this movie',
              style: TextStyle(color: Colors.white),),
        ) : ListView.builder(
          itemCount: data.commentsModel.length,
          itemBuilder: (context, position) {
            return CommentsUI(
              size: size,
              commentModel: data.commentsModel[position],
              movieName: widget.movieName,
            );
          },
        );
      },
      ),
      bottomNavigationBar: Transform.translate(
        offset: Offset(0.0, -1 * MediaQuery
            .of(context)
            .viewInsets
            .bottom,
        ),
        child: AddComment(
          movieItemId: widget.movieItemId,
          sendCommentProvider: sendCommentProvider,
          size: size,
        ),
      ),
    );
  }
}