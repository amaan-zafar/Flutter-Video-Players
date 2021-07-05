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
        body: Center(
          child: VideoItems(
              videoPlayerController:
                  VideoPlayerController.asset('assets/videos/video.mp4'),
              looping: true,
              autoplay: true),
        ));
  }
}
