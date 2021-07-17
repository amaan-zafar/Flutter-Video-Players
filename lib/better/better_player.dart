import 'package:better_player/better_player.dart';
import 'package:flutter/material.dart';

class BPPlayer extends StatelessWidget {
  final String url;
  const BPPlayer({Key? key, required this.url}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BetterPlayer.network(
      url,
      betterPlayerConfiguration: BetterPlayerConfiguration(aspectRatio: 16 / 9),
    );
  }
}
