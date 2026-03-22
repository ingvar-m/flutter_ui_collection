import 'package:flutter/material.dart';
import 'package:pastel_music_app/widgets/album_cover.dart';
import 'package:pastel_music_app/widgets/player_actions.dart';
import 'package:pastel_music_app/widgets/song_info.dart';
import 'package:pastel_music_app/widgets/top_bar.dart';
import 'package:pastel_music_app/widgets/timeline.dart';

class MusicContent extends StatelessWidget {
  const MusicContent({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: Column(
          children: [
            TopBar(),
            const Spacer(),
            //const SizedBox(height: 52,),
            AlbumCover(),
            //const SizedBox(height: 52,),
            const Spacer(),
            SongInfo(
              songName: 'Name Song',
              authorName: 'Author',
            ),
            const SizedBox(height: 32,),
            Timeline(
              durationInSeconds: 100,
            ),
            const SizedBox(height: 32,),
            PlayerActions(),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
