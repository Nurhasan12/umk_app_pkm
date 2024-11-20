// lib/features/landing/pages/landing_page.dart

import 'package:flutter/material.dart';
import '../widgets/background_image.dart';
import '../widgets/content_card.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final topHalfHeight = screenHeight * 0.6; // Background image takes 60%
    final contentStartPosition =
        screenHeight * 0.59; // Content card starts at 55% to create overlap

    return Scaffold(
      body: Stack(
        children: [
          BackgroundImage(height: topHalfHeight),
          ContentCard(topPosition: contentStartPosition),
        ],
      ),
    );
  }
}
