import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/app_colors.dart';

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.shield,
          color: AppColors.logoIconColor,
          size: 28,
        ),
        const SizedBox(width: 6,),
        Text(
          'Logo',
          style: GoogleFonts.sen(
              color: AppColors.logoColor,
              fontSize: 24,
              fontWeight: FontWeight.bold
          ),
        ),
      ],
    );
  }
}
