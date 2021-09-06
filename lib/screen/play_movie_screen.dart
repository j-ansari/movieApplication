import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:video_player/video_player.dart';
import 'package:chewie/chewie.dart';
import 'package:wakelock/wakelock.dart';

class PlayMovieScreen extends StatefulWidget {
  final String playMovieUrlKey;

  PlayMovieScreen({required this.playMovieUrlKey});

  @override
  State<StatefulWidget> createState() => _PlayMovieScreenState();
}

class _PlayMovieScreenState extends State<PlayMovieScreen> {
  late VideoPlayerController videoController;
  late ChewieController chewieController;

  @override
  void initState() {
    super.initState();
    videoController = VideoPlayerController.network(widget.playMovieUrlKey);
    chewieController = ChewieController(
      videoPlayerController: videoController,
      aspectRatio: 16/9,
      allowedScreenSleep: false,
      fullScreenByDefault: true,
      deviceOrientationsAfterFullScreen: [
        DeviceOrientation.landscapeRight,
        DeviceOrientation.landscapeLeft,
        DeviceOrientation.portraitUp,
        DeviceOrientation.portraitDown,
      ],
      autoPlay: true,
      autoInitialize: true,
      showControls: true,
      looping: false,

    );
    chewieController.addListener(() {
      if (chewieController.isFullScreen) {
        SystemChrome.setPreferredOrientations([
          DeviceOrientation.landscapeRight,
          DeviceOrientation.landscapeLeft,
        ]);
      } else {
        SystemChrome.setPreferredOrientations([
          DeviceOrientation.portraitUp,
          DeviceOrientation.portraitDown,
        ]);
      }
    });

    setState(() {
      Wakelock.enable();
    });
  }

  @override
  void dispose() {
    videoController.dispose();
    chewieController.dispose();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    setState(() {
      Wakelock.disable();
    });

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Container(
          child: Chewie(
            controller: chewieController,
          ),
        ),
      ),
    );
  }
}