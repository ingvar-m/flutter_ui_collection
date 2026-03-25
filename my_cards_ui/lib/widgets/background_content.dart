import 'package:flutter/material.dart';

import '../constants/app_colors.dart';

class BackgroundContent extends StatelessWidget {
  const BackgroundContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                AppColors.gradientBackgroundColorStart,
                AppColors.gradientBackgroundColorEnd,
                AppColors.gradientBackgroundColorStart,
              ]
          ),
      ),
    );
  }
}
