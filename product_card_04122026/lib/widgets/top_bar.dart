import 'package:flutter/material.dart';
import 'package:product_card_04112026/widgets/action_button.dart';

class TopBar extends StatelessWidget {
  const TopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ActionButton(
            icon: Icons.arrow_back_ios_new_rounded,
            onPressed: () {}
        ),
        Row(
          children: [
            ActionButton(
                icon: Icons.favorite_border,
                onPressed: () {}
            ),
            const SizedBox(width: 12,),
            ActionButton(
                icon: Icons.share,
                onPressed: () {}
            ),
          ],
        ),
      ],
    );
  }
}
