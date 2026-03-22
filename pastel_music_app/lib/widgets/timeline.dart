import 'package:flutter/material.dart';

import '../constants/app_colors.dart';

class Timeline extends StatefulWidget {

  final double durationInSeconds;

  const Timeline({super.key, required this.durationInSeconds});

  @override
  State<Timeline> createState() => _TimelineState();
}

class _TimelineState extends State<Timeline> {

  double _currentValue = 0;

  String formatTime(double seconds) {
    int totalSeconds = seconds.toInt();
    int minutes = totalSeconds ~/ 60;
    int remainingSeconds = totalSeconds % 60;
    return "${minutes.toString().padLeft(2, '0')}:${remainingSeconds.toString().padLeft(2, '0')}";
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SliderTheme(
          data: SliderTheme.of(context).copyWith(
            trackHeight: 4,
            activeTrackColor: AppColors.activeTrackColor,
            inactiveTrackColor: AppColors.inactiveTrackColor,
            thumbColor: AppColors.thumbColor,
            thumbShape: RoundSliderThumbShape(enabledThumbRadius: 8),
            overlayColor: Colors.transparent,
            overlayShape: const RoundSliderOverlayShape(overlayRadius: 8)
          ),
          child: Slider(
            min: 0,
              max: widget.durationInSeconds,
              value: _currentValue,
              onChanged: (newValue) {
                setState(() {
                  _currentValue = newValue;
                });
              }
          ),
        ),
        const SizedBox(height: 8,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                formatTime(_currentValue),
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                    color: AppColors.currentTimeColor
                ),
              ),
              Text(
                formatTime(widget.durationInSeconds),
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: AppColors.durationColor
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
