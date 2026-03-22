import 'package:flutter/material.dart';
import 'package:pastel_music_app/widgets/action_button.dart';

class TopBar extends StatelessWidget {
  const TopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ActionButton(
          onPressed: () {},
          icon: Icons.chevron_left,
          size: 32,
        ),
        ActionButton(
          onPressed: () {},
          icon: Icons.playlist_play_outlined,
          size: 32,
        )
      ],
    );
  }
}
