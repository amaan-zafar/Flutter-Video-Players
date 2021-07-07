import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:video_player_chewie/chewie/chewie_config.dart';

class ChewiePlayer extends StatelessWidget {
  const ChewiePlayer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Chewie Player'),
          centerTitle: true,
        ),
        body: ListView(
          children: [
            // ChewieConfig(
            //     videoPlayerController: VideoPlayerController.network(
            //         'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4'),
            //     looping: false,
            //     autoplay: true),
            ChewieConfig(
                videoPlayerController:
                    VideoPlayerController.asset('assets/video.mp4'),
                looping: false,
                autoplay: true),
          ],
        ));
  }
}
