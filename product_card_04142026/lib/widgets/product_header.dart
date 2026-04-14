import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:product_card_04142026/constants/app_colors.dart';

class ProductHeader extends StatelessWidget {
  const ProductHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Bananas',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: AppColors.textPrimaryColor,
          ),
        ),
        const SizedBox(height: 4,),
        Row(
          children: [Row(
                children: [
                  RichText(
                    text: TextSpan(
                      style: TextStyle(
                        fontSize: 16,
                        color: AppColors.primaryColor,
                      ),
                      children: [
                        TextSpan(text: '\$1.99', style: TextStyle(fontWeight: FontWeight.bold)),
                        TextSpan(text: '/KG')
                      ]
                    ),
                  ),
                  const SizedBox(width: 8,),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                    decoration: BoxDecoration(
                      color: AppColors.primaryColor,
                      borderRadius: BorderRadius.circular(70)
                    ),
                    child: Text(
                      "\$0.50 OFF",
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.white
                      ),
                    ),
                  ),
                ],
              ),
            const SizedBox(width: 8,),
            Text(
              "\$2.49 USD",
              style: TextStyle(
                  fontSize: 14,
                  color: AppColors.outlineColor,
                decoration: TextDecoration.lineThrough
              ),
            ),
          ],
        ),
        const SizedBox(height: 14,),
        Row(
          children: [
            RatingBar.builder(
              itemCount: 5,
              initialRating: 4.5,
              allowHalfRating: true,
              minRating: 1,
              direction: Axis.horizontal,
              itemBuilder: (contest, _) => Icon(
                Icons.star,
                color: AppColors.yellowColor,
              ),
              itemSize: 14,
              onRatingUpdate: (rating) {

              },
            ),
            const SizedBox(width: 6,),
            Text(
              "(58)",
              style: TextStyle(
                  fontSize: 13,
                  color: AppColors.onSurfaceVariant
              ),
            )
          ],
        )
      ],
    );
  }
}
