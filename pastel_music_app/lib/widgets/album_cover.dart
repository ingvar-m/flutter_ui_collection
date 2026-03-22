import 'package:flutter/material.dart';

import '../constants/app_colors.dart';

class AlbumCover extends StatelessWidget {
  final String? pathCover;

  const AlbumCover({this.pathCover, super.key});

  @override
  Widget build(BuildContext context) {
    double side = MediaQuery.of(context).size.width * 0.8;
    return Container(
      width: side,
      height: side,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(28),
        boxShadow: [
          BoxShadow(
              color: Colors.black.withAlpha(100),
            blurRadius: 20,
            spreadRadius: 0,
            offset: const Offset(0, 7)
          )
        ]
      ),
      child: Center(
        child: pathCover == null
            ? ShaderMask(
                shaderCallback: (bounds) => LinearGradient(
                  begin: Alignment.topCenter,
                  colors: [AppColors.colorIconStart, AppColors.colorIconEnd],
                ).createShader(bounds),
                child: Icon(Icons.music_note, size: 100, color: Colors.white),
              )
            : Image.asset(pathCover!),
      ),
    );
  }
}
