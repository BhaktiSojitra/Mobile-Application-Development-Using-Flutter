import 'package:flutter/material.dart';

class CarouselSlider_demo extends StatefulWidget {
  const CarouselSlider_demo({super.key});

  @override
  State<CarouselSlider_demo> createState() => _CarouselSlider_demoState();
}

class _CarouselSlider_demoState extends State<CarouselSlider_demo> {
  final List<String> images = [
    "assets/images/cake.jpeg",
    "assets/images/carrot.jpeg",
    "assets/images/cartoon.jpeg"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: SizedBox(
        height: 260,
        child: PageView.builder(
          itemCount: images.length,
          itemBuilder: (context, index) {
            return Container(
              child: Image.asset(images[index],
              height: 260,
              fit:BoxFit.cover),
            );
          },
        ),
      ),
    ));
  }
}
