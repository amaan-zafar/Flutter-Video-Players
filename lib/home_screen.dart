import 'package:flutter/material.dart';
import 'package:video_player_chewie/flick/flick_landscape_vp.dart';
import 'package:video_player_chewie/video_player_model.dart';
import 'package:video_player_chewie/video_player_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Video Players'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildButton(
                context,
                VideoPlayerModel(
                    playerTitle: 'Chewie Player',
                    playerWidget: FLickLandscapePlayer())),
            _buildButton(
                context,
                VideoPlayerModel(
                    playerTitle: 'Better Player',
                    playerWidget: FLickLandscapePlayer())),
            _buildButton(
                context,
                VideoPlayerModel(
                    playerTitle: 'Flick Player',
                    playerWidget: FLickLandscapePlayer())),
          ],
        ),
      ),
    );
  }

  MaterialButton _buildButton(
      BuildContext context, VideoPlayerModel videoPlayerModel) {
    return MaterialButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => VideoPlayerScreen(
                    videoPlayerModel: videoPlayerModel,
                  )),
        );
      },
      child: Text(videoPlayerModel.playerTitle),
    );
  }
}
