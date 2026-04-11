import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:product_card_04112026/constants/app_colors.dart';

class ImageSlider extends StatefulWidget {
  ImageSlider({super.key});

  @override
  State<ImageSlider> createState() => _ImageSliderState();
}

class _ImageSliderState extends State<ImageSlider> {
  int _current = 0;
  final CarouselSliderController _controller = CarouselSliderController();

  final List<String> images = [
    'headphones.png',
    'headphones.png',
    'headphones.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          carouselController: _controller,
          items: images.map((i) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  child: Image.asset("assets/images/$i", fit: BoxFit.contain),
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Color(0xFFF5F5F5),
                    borderRadius: BorderRadius.circular(24),
                  ),
                );
              },
            );
          }).toList(),
          options: CarouselOptions(
            aspectRatio: 1.1,
            height: MediaQuery.of(context).size.height * 0.4,
            autoPlay: true,
            enlargeCenterPage: true,
            onPageChanged: (index, reason) {
              setState(() {
                _current = index;
              });
            },
          ),
        ),
        const SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: images.asMap().entries.map((entry) {
            return GestureDetector(
              onTap: () => _controller.animateToPage(entry.key),
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 250),
                curve: Curves.easeOutCubic,
                height: 8,
                width: _current == entry.key ? 24 : 8,
                margin: EdgeInsets.symmetric(horizontal: 6, vertical: 8),
                decoration: BoxDecoration(
                  color: Color.lerp(
                      AppColors.lightGrey,
                      AppColors.primaryColor,
                      _current == entry.key ? 1 : 0
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}
