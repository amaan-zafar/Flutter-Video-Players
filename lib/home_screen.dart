import 'package:flutter/material.dart';
import 'package:video_player_chewie/flick/landscape_player.dart';
import 'package:video_player_chewie/video_player_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  _navigateToPlayer(
    context,
    String playerTitle,
  ) {
    return Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => FLickLandscapePlayer()),
    );
  }

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
            _buildButton(context, 'Chewie Player'),
            _buildButton(context, 'Better Player'),
            _buildButton(context, 'Flick Player'),
          ],
        ),
      ),
    );
  }

  MaterialButton _buildButton(BuildContext context, String playerType) {
    return MaterialButton(
      onPressed: () {
        _navigateToPlayer(context, playerType);
      },
      child: Text(playerType),
    );
  }
}
