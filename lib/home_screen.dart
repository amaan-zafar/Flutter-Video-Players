import 'package:flutter/material.dart';
import 'package:video_player_chewie/better/better_player.dart';
import 'package:video_player_chewie/chewie/chewie_player.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  _navigateToPlayer(
    context,
    Widget Screen,
  ) {
    return Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Screen),
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
            MaterialButton(
              onPressed: () {
                _navigateToPlayer(context, ChewiePlayer());
              },
              child: Text('Chewie Player'),
            ),
            MaterialButton(
              onPressed: () {
                _navigateToPlayer(context, BetterPlayer());
              },
              child: Text('Better Player'),
            ),
            MaterialButton(
              onPressed: () {},
              child: Text('Flick Player'),
            ),
          ],
        ),
      ),
    );
  }
}
