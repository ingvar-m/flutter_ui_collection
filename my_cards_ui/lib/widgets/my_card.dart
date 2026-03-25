import 'package:flutter/material.dart';
import 'package:my_card_ui/constants/app_colors.dart';

class MyCard extends StatelessWidget {
  final String nameBank;
  final String cardNumber;
  final String date;
  final Widget logo;

  const MyCard({
    super.key,
    required this.nameBank,
    required this.cardNumber,
    required this.date,
    required this.logo,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 224,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            AppColors.gradientCardColorStart,
            AppColors.gradientCardColorEnd,
          ],
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  nameBank,
                  style: TextStyle(
                    color: Colors.white.withAlpha(200),
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Icon(Icons.contactless, size: 34, color: Colors.white.withAlpha(100)),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  cardNumber,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 16,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      date,
                      style: TextStyle(
                        color: Colors.white.withAlpha(200),
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    logo
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
