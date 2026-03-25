import 'package:flutter/material.dart';

class TransactionItem extends StatelessWidget {

  final IconData icon;
  final List<Color> iconColors;
  final String title;
  final String subTitle;
  final String amount;

  const TransactionItem({super.key, required this.icon, required this.iconColors, required this.title, required this.subTitle, required this.amount});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 44,
              width: 44,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      iconColors[0],
                      iconColors[1]
                    ]
                )
              ),
              child: Icon(
                icon,
                color: Colors.white,
                size: 24,
              ),
            ),
            const SizedBox(width: 14,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w600
                  ),
                ),
                Text(
                  subTitle,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.w500
                  ),
                )
              ],
            ),
          ],
        ),
        Text(
          amount,
          style: TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontWeight: FontWeight.w600
          ),
        )
      ],
    );
  }
}
