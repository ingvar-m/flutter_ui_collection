import 'package:flutter/material.dart';
import 'package:pastel_music_app/constants/app_colors.dart';
import 'package:pastel_music_app/widgets/music_content.dart';
import 'package:pastel_music_app/widgets/top_bar.dart';

class MusicScreen extends StatelessWidget {
  const MusicScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            colors: [AppColors.backgroundStart, AppColors.backgroundEnd],
          ),
        ),
        child: MusicContent(),
      ),
    );
  }
}
