import 'package:flutter/material.dart';
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
                    child: videoPlayerModel.playerWidget,
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
