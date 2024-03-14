import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../utils/Mockutil.dart';

class CustomCarousal extends StatelessWidget {
  final double topMargin;
   CustomCarousal({super.key, required this.topMargin});

  final List _banners = MockUtil.getBanners();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: topMargin),
      child: CarouselSlider.builder(
          itemCount: _banners.length,
          itemBuilder: (context, index, i) => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                  _banners[index],
                  fit: BoxFit.cover,
                  width: double.infinity,
                )),
          ),
          options: CarouselOptions(
              enlargeStrategy: CenterPageEnlargeStrategy.scale,
              aspectRatio: 3,
              viewportFraction: 1)),
    );
  }
}
