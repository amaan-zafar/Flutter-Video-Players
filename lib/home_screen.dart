import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:video_player_chewie/video_items.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Chewie Player'),
          centerTitle: true,
        ),
        body: ListView(
          children: [
            VideoItems(
                videoPlayerController: VideoPlayerController.network(
                    'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4'),
                looping: false,
                autoplay: true),
            VideoItems(
                videoPlayerController:
                    VideoPlayerController.asset('assets/video.mp4'),
                looping: false,
                autoplay: true),
          ],
        ));
  }
}
