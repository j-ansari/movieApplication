import 'dart:isolate';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_downloader/flutter_downloader.dart';
import 'package:movie_application/model/detail_model.dart';
import 'package:movie_application/screen/comments_screen.dart';
import 'package:movie_application/screen/play_movie_screen.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:shared_preferences/shared_preferences.dart';

class TopCoverDetail extends StatefulWidget {
  final Size size;
  final DetailModel detailModel;
  final String movieName;

  TopCoverDetail({
    required this.size,
    required this.detailModel,
    required this.movieName,
  });

  @override
  State<StatefulWidget> createState() => _TopCoverDetailState();
}

class _TopCoverDetailState extends State<TopCoverDetail> {
  int progress = 0;
  ReceivePort _receivePort = ReceivePort();
  TextEditingController textController = TextEditingController();

  static downloadingCallback(id, status, progress) {
    SendPort? sendPort = IsolateNameServer.lookupPortByName('download');
    sendPort!.send([id, status, progress]);
  }

  @override
  void initState() {
    super.initState();

    IsolateNameServer.registerPortWithName(_receivePort.sendPort, 'download');
    FlutterDownloader.registerCallback(downloadingCallback);
    _receivePort.listen((message) {
      setState(() {
        progress = message[2];
      });
    });
  }

  @override
  void dispose() {
    textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topRight,
      children: [
        Container(
          alignment: Alignment.center,
          height: widget.size.height * 0.28,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(widget.detailModel.imageUrl),
            ),
          ),
          child: IconButton(
            onPressed: () async {
              SharedPreferences pref = await SharedPreferences.getInstance();
              if (pref.getInt('shopped') != null) {
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) =>
                        PlayMovieScreen(
                          playMovieUrlKey: widget.detailModel.playMovieUrl,)),
                );
              } else {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text('please add account'),));
              }
            },
            icon: Icon(Icons.play_circle_fill,
              color: Colors.amber, size: 45,),
          ),
        ),
        Text("$progress", style: TextStyle(fontSize: 50)),
        Row(
          children: [
            IconButton(
              onPressed: () async {
                final status = await Permission.storage.request();
                if (status.isGranted) {
                  final externalDir = await getExternalStorageDirectory();
                  FlutterDownloader.enqueue(
                    url: widget.detailModel.playMovieUrl,
                    savedDir: externalDir!.path,
                    fileName: 'download',
                    showNotification: true,
                    openFileFromNotification: true,
                  );
                } else {
                  print('permission denaid');
                }
              },
              icon: Icon(Icons.download, color: Colors.amber),
            ),
            IconButton(
              icon: Icon(Icons.comment, color: Colors.amber),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) =>
                    CommentsScreen(
                      movieItemId: widget.detailModel.itemId,
                      movieName: widget.movieName,)),
                );
              },
            ),
          ],
        ),
      ],
    );
  }
}