import 'package:flutter/material.dart';
import 'package:product_card_04112026/constants/app_colors.dart';
import 'package:product_card_04112026/widgets/image_slider.dart';
import 'package:product_card_04112026/widgets/primary_button.dart';
import 'package:product_card_04112026/widgets/product_info.dart';
import 'package:product_card_04112026/widgets/secondary_button.dart';
import 'package:product_card_04112026/widgets/top_bar.dart';

class ProductCardPage extends StatelessWidget {
  const ProductCardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBackgroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              TopBar(),
              const SizedBox(height: 16),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      ImageSlider(),
                      const SizedBox(height: 8),
                      ProductInfo(
                        title: 'Headphones',
                        rating: 5.0,
                        reviewsCount: 200,
                        price: '1000',
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(
                  0,
                  16,
                  0,
                  MediaQuery.of(context).padding.bottom + 12,
                ),
                decoration: BoxDecoration(
                  color: AppColors.scaffoldBackgroundColor
                ),
                child: Column(
                  children: [
                    PrimaryButton(text: "Buy It Now", onPressed: () {}),
                    const SizedBox(height: 12),
                    SecondaryButton(text: "Add to cart", onPressed: () {}),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
