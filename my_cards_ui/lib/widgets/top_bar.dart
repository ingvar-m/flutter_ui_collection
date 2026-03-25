import 'package:flutter/material.dart';

class TopBar extends StatelessWidget {
  const TopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
            size: 32,
          ),
        ),
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.account_circle,
              size: 50,
              color: Colors.white,
            )
        )
      ],
    );
  }
}
