import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class EnmiVida extends StatelessWidget {
  final String videoUrl = 'poTO2t8tYvA';

  EnmiVida({super.key});

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController(
      initialVideoId: videoUrl,
      flags: const YoutubePlayerFlags(
        autoPlay: false,
      ),
    );

    return Container(
      color: Colors.black,
      alignment: Alignment.center,
      child: YoutubePlayer(
        controller: controller,
        showVideoProgressIndicator: true,
        progressColors: const ProgressBarColors(
          playedColor: Colors.red,
          handleColor: Colors.redAccent,
        ),
      ),
    );
  }
}
