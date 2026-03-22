import 'package:flutter/material.dart';

import '../constants/app_colors.dart';

class PlayButton extends StatefulWidget {

  final VoidCallback onPressed;

  const PlayButton({super.key, required this.onPressed});

  @override
  State<PlayButton> createState() => _PlayButtonState();
}

class _PlayButtonState extends State<PlayButton> {

  bool isPlaying = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        widget.onPressed();
        setState(() {
          isPlaying = !isPlaying;
        });
      },
      icon: Icon(
        isPlaying ? Icons.pause : Icons.play_arrow,
        size: 48,
      ),
      style: IconButton.styleFrom(
        backgroundColor: AppColors.primaryAccent,
        padding: const EdgeInsets.all(16),
        foregroundColor: Colors.white,
      ),
    );
  }
}
