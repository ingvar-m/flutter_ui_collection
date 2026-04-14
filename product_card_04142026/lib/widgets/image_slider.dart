import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:product_card_04142026/constants/app_colors.dart';

class ImageSlider extends StatefulWidget {
  final List<String> imagePaths;

  const ImageSlider({super.key, required this.imagePaths});

  @override
  State<ImageSlider> createState() => _ImageSliderState();
}

class _ImageSliderState extends State<ImageSlider> {
  final CarouselSliderController _controller = CarouselSliderController();
  int _current = 0;

  @override
  Widget build(BuildContext context) {
    List<String> images = widget.imagePaths;
    return Column(
      children: [
        CarouselSlider(
          carouselController: _controller,
          items: images.map((i) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.lightGreyColor,
                  ),
                  child: Image.asset("assets/images/$i", fit: BoxFit.contain),
                );
              },
            );
          }).toList(),
          options: CarouselOptions(
            aspectRatio: 1.0,
            height: 180,
            onPageChanged: (index, reason) {
              setState(() {
                _current = index;
              });
            },
          ),
        ),
        const SizedBox(height: 12,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: images.asMap().entries.map((entry) {
            return GestureDetector(
              onTap: () => _controller.animateToPage(entry.key),
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 250),
                curve: Curves.easeOutCubic,
                height: 5,
                width: _current == entry.key ? 20 : 16,
                margin: EdgeInsets.symmetric(horizontal: 6),
                decoration: BoxDecoration(
                  color: Color.lerp(
                    Color(0xFFE4E4E4),
                    AppColors.yellowColor,
                    _current == entry.key ? 1 : 0,
                  ),
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}
