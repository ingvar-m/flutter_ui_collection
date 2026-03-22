import 'package:flutter/material.dart';

import '../constants/app_colors.dart';

class SongInfo extends StatefulWidget {
  final String songName;
  final String authorName;

  const SongInfo({super.key, required this.songName, required this.authorName});

  @override
  State<SongInfo> createState() => _SongInfoState();
}

class _SongInfoState extends State<SongInfo> {

  bool isLiked = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              widget.songName,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Row(
              children: [
                GestureDetector(
                  onTap: () {},
                  child: Icon(
                    Icons.lyrics_outlined,
                    color: AppColors.textSecondary,
                    size: 32,
                  ),
                ),
                const SizedBox(width: 12,),
                GestureDetector(
                  onTap: () => setState(() {
                    isLiked = !isLiked;
                  }),
                  child: Icon(
                    isLiked ? Icons.favorite : Icons.favorite_border,
                    color: AppColors.textSecondary,
                    size: 32,
                  ),
                ),
              ],
            )
          ],
        ),
        const SizedBox(height: 4,),
        Text(
          widget.authorName,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: AppColors.textSecondary,
          ),
        ),
      ],
    );
  }
}
