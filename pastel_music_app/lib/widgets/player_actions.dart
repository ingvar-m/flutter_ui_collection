import 'package:flutter/material.dart';
import 'package:pastel_music_app/widgets/action_button.dart';
import 'package:pastel_music_app/widgets/play_button.dart';
import 'package:pastel_music_app/widgets/player_button.dart';

class PlayerActions extends StatelessWidget {
  const PlayerActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        PlayerButton(
            onPressed: () {},
            icon: Icons.shuffle
        ),
        PlayerButton(
            onPressed: () {},
            icon: Icons.fast_rewind
        ),
        PlayButton(onPressed: () {}),
        PlayerButton(
            onPressed: () {},
            icon: Icons.fast_forward
        ),
        PlayerButton(
            onPressed: () {},
            icon: Icons.repeat
        ),
      ],
    );
  }
}
