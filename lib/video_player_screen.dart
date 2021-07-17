import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:video_player_chewie/chewie/chewie_config.dart';
import 'package:video_player_chewie/video_player_model.dart';

class VideoPlayerScreen extends StatelessWidget {
  final VideoPlayerModel videoPlayerModel;
  const VideoPlayerScreen({Key? key, required this.videoPlayerModel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          title: Text(videoPlayerModel.playerTitle),
          centerTitle: true,
        ),
        body: width > 1000
            ? Row(
                children: [
                  Flexible(
                    flex: 2,
                    child: VideoPlayer(
                      videoPlayerWidget: ChewieConfig(
                          videoPlayerController: VideoPlayerController.network(
                              'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4'),
                          looping: false,
                          autoplay: true),
                      videoUrl:
                          'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4',
                    ),
                  ),
                  Flexible(
                      flex: 1,
                      child: Container(
                        color: Colors.blue,
                      ))
                ],
              )
            : Column());
  }
}

class VideoPlayer extends StatelessWidget {
  final Widget videoPlayerWidget;
  final String videoUrl;
  const VideoPlayer(
      {Key? key, required this.videoUrl, required this.videoPlayerWidget})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return videoPlayerWidget;
  }
}
