import 'package:flutter/material.dart';

class BackgroundImage extends StatelessWidget {
  final double height;

  const BackgroundImage({
    super.key,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0,
      left: 0,
      right: 0,
      height: height,
      child: Image.asset(
        'assets/images/landing_page.png',
        fit: BoxFit.cover,
      ),
    );
  }
}
