import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:video_player_chewie/better/better_player.dart';
import 'package:video_player_chewie/chewie/chewie_player.dart';
import 'package:video_player_chewie/flick/flick_landscape_player.dart';
import 'package:video_player_chewie/video_player_model.dart';
import 'package:video_player_chewie/screens/video_player_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  static const String URL =
      'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4';

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
                    playerWidget: ChewiePlayer(
                      url: URL,
                    ))),
            kIsWeb
                ? Container()
                : _buildButton(
                    context,
                    VideoPlayerModel(
                        playerTitle: 'Better Player',
                        playerWidget: BPPlayer(
                          url: URL,
                        ))),
            _buildButton(
                context,
                VideoPlayerModel(
                    playerTitle: 'Flick Player',
                    playerWidget: FLickLandscapePlayer(
                      url: URL,
                    ))),
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
