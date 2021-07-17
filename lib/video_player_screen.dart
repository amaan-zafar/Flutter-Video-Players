import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:video_player_chewie/chewie/chewie_config.dart';

class VideoPlayerScreen extends StatelessWidget {
  final String playerTitle;
  const VideoPlayerScreen({Key? key, required this.playerTitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(playerTitle),
          centerTitle: true,
        ),
        body: Row(
          children: [
            Flexible(
              flex: 2,
              child: ListView(
                children: [
                  ChewieConfig(
                      videoPlayerController: VideoPlayerController.network(
                          'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4'),
                      looping: false,
                      autoplay: true),
                  // ChewieConfig(
                  //     videoPlayerController:
                  //         VideoPlayerController.asset('assets/video.mp4'),
                  //     looping: false,
                  //     autoplay: false),
                ],
              ),
            ),
            Flexible(
                flex: 1,
                child: Container(
                  color: Colors.blue,
                ))
          ],
        ));
  }
}
