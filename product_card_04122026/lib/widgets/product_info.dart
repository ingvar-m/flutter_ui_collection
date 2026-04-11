import 'package:flutter/material.dart';
import 'package:product_card_04112026/constants/app_colors.dart';

class ProductInfo extends StatelessWidget {
  final String title;
  final double rating;
  final int reviewsCount;
  final String price;

  const ProductInfo({
    super.key,
    required this.title,
    required this.rating,
    required this.reviewsCount,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Expanded(
                child: Text(
                  title,
                  style: TextStyle(
                    color: AppColors.primaryTextColor,
                    fontSize: 26,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Row(
                children: [
                  Icon(Icons.star, color: Color(0xFFE8B931), size: 20),
                  const SizedBox(width: 8),
                  Text(
                    rating.toString(),
                    style: TextStyle(
                      color: AppColors.secondaryTextColor,
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(width: 4),
                  Text(
                    '($reviewsCount)',
                    style: TextStyle(
                      color: AppColors.secondaryTextColor,
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const Divider(thickness: 1, color: const Color(0xFFD9D9D9)),
          Row(
            children: [
              Text(
                '\$$price',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 26,
                  letterSpacing: 0.5,
                  color: AppColors.primaryTextColor,
                ),
              ),
              const SizedBox(width: 8),
              Container(height: 20, width: 1, color: Color(0xFFB2B2B2)),
              const SizedBox(width: 8),
              Expanded(
                child: Text(
                  "Including taxes and duties",
                  style: TextStyle(
                    fontSize: 14,
                    color: AppColors.secondaryTextColor,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          Text(
            "Lorem ipsum dolor sit amet, adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. ",
            style: TextStyle(
              fontSize: 15,
              height: 1.5,
              color: Color(0xFF6E6E6E),
            ),
          ),
        ],
      ),
    );
  }
}
