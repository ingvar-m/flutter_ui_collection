import 'package:flutter/material.dart';

import 'action_button.dart';

class BalanceHeader extends StatelessWidget {
  const BalanceHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
                'Balance',
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.w600
                )
            ),
            const SizedBox(height: 6,),
            Text(
                '\$5,644.00',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                )
            )
          ],
        ),
        Row(
          children: [
            Column(
              children: [
                ActionButton(
                    icon: Icons.history,
                    onPressed: () {}
                ),
                const SizedBox(height: 4,),
                Text(
                    'History',
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                        fontWeight: FontWeight.w500
                    )
                )
              ],
            ),
            const SizedBox(width: 10,),
            Column(
              children: [
                ActionButton(
                    icon: Icons.compare_arrows,
                    onPressed: () {}
                ),
                const SizedBox(height: 4,),
                Text(
                    'Send',
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                        fontWeight: FontWeight.w500
                    )
                )
              ],
            ),
          ],
        )
      ],
    );
  }
}
