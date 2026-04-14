import 'package:flutter/material.dart';
import 'package:product_card_04142026/widgets/image_slider.dart';
import 'package:product_card_04142026/widgets/primary_button.dart';
import 'package:product_card_04142026/widgets/product_header.dart';
import 'package:product_card_04142026/widgets/product_info.dart';
import 'package:product_card_04142026/widgets/secondary_button.dart';
import 'package:product_card_04142026/widgets/top_bar.dart';

class ProductCardPage extends StatelessWidget {
  const ProductCardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            child: Column(
              children: [
                TopBar(),
                const SizedBox(height: 4,),
                ImageSlider(imagePaths: [
                  'bananas.png',
                  'bananas.png',
                  'bananas.png',
                ]),
                const SizedBox(height: 8,),
                ProductHeader(),
                const SizedBox(height: 16,),
                Row(
                  children: [
                    Expanded(
                      child: SecondaryButton(
                        title: "Add To Cart",
                        onPressed: () {},
                      ),
                    ),
                    const SizedBox(width: 12,),
                    Expanded(
                      child: PrimaryButton(
                          title: "Buy Now",
                          onPressed: () {}
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 30,),
                ProductInfo(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
