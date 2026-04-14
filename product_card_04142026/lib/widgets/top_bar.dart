import 'package:flutter/material.dart';
import 'package:product_card_04142026/constants/app_colors.dart';

class TopBar extends StatelessWidget {
  const TopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back_ios_new, size: 24),
          style: IconButton.styleFrom(
            backgroundColor: AppColors.lightGreyColor,
            foregroundColor: AppColors.darkGreyColor,
            padding: EdgeInsets.all(8),
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.shopping_bag_outlined, size: 32),
          style: IconButton.styleFrom(
            backgroundColor: AppColors.lightGreyColor,
            foregroundColor: AppColors.darkGreyColor,
            padding: EdgeInsets.zero,
          ),
        ),
      ],
    );
  }
}
