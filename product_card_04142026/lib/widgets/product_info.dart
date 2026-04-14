import 'package:flutter/material.dart';

import '../constants/app_colors.dart';

class ProductInfo extends StatelessWidget {
  const ProductInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Details',
          style: TextStyle(
            fontSize: 16,
            color: AppColors.textPrimaryColor,
              fontWeight: FontWeight.w600
          ),
        ),
        const SizedBox(height: 6,),
        Text(
          'Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.',
          style: TextStyle(
              fontSize: 14,
              height: 1.5,
              color: AppColors.textSecondaryColor,
          ),
          maxLines: 3,
          overflow: TextOverflow.ellipsis,
        ),
        const SizedBox(height: 32,),
        ExpansionTile(
            title: Text(
                "Nutritional facts",
              style: TextStyle(
                  fontSize: 16,
                  color: AppColors.textPrimaryColor,
                  fontWeight: FontWeight.w600
              ),
            ),
          shape: Border(),
          tilePadding: EdgeInsets.symmetric(vertical: 8),
          childrenPadding: EdgeInsets.symmetric(vertical: 8),
          iconColor: AppColors.outlineColor,
          collapsedIconColor: AppColors.outlineColor,
        ),
        Divider(
          thickness: 1,
          color: AppColors.outlineColor,
        ),
        ExpansionTile(
            title: Text(
              "Reviews",
              style: TextStyle(
                  fontSize: 16,
                  color: AppColors.textPrimaryColor,
                fontWeight: FontWeight.w600
              ),
            ),
          shape: Border(),
          tilePadding: EdgeInsets.symmetric(vertical: 8),
          childrenPadding: EdgeInsets.symmetric(vertical: 8),
          iconColor: AppColors.outlineColor,
          collapsedIconColor: AppColors.outlineColor,
        )
      ],
    );
  }
}
