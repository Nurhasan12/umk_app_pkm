// lib/features/landing/widgets/content_card.dart

import 'package:flutter/material.dart';
import '../../../core/constants/colors.dart';

class ContentCard extends StatelessWidget {
  final double topPosition;

  const ContentCard({
    super.key,
    required this.topPosition,
  });

  @override
  Widget build(BuildContext context) {
    // Get screen dimensions
    final screenSize = MediaQuery.of(context).size;
    final screenHeight = screenSize.height;
    final screenWidth = screenSize.width;

    // Calculate responsive sizes
    final titleFontSize = screenWidth * 0.075; // 7.5% of screen width
    final subtitleFontSize = screenWidth * 0.064; // 6.4% of screen width
    final descriptionFontSize = screenWidth * 0.04; // 4% of screen width
    final buttonFontSize = screenWidth * 0.04; // 4% of screen width
    final verticalSpacing = screenHeight * 0.02; // 2% of screen height
    final buttonVerticalPadding = screenHeight * 0.025; // 2.5% of screen height
    final contentPadding = screenWidth * 0.06; // 6% of screen width

    return Positioned(
      top: topPosition,
      left: 0,
      right: 0,
      bottom: 0,
      child: Container(
        decoration: const BoxDecoration(
          color: AppColors.primary,
        ),
        child: SingleChildScrollView(
          physics: const ClampingScrollPhysics(),
          child: Padding(
            padding: EdgeInsets.fromLTRB(
              contentPadding,
              contentPadding,
              contentPadding,
              contentPadding * 0.75,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                          color: AppColors.white,
                          fontWeight: FontWeight.bold,
                          height: 1.3,
                          fontSize: titleFontSize,
                        ),
                    children: [
                      const TextSpan(text: 'Bangun UMKM Indonesia\n'),
                      TextSpan(
                        text: 'menjadi pengusaha\n',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: subtitleFontSize,
                        ),
                      ),
                      TextSpan(
                        text: 'Mendunia',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: subtitleFontSize,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: verticalSpacing),
                // Subtitle
                Text(
                  'Mobile Apps UMKM Indonesia',
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        color: AppColors.white,
                        fontSize: descriptionFontSize,
                        fontWeight: FontWeight.w400,
                      ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: verticalSpacing * 1.5),
                // Get Started Button
                Center(
                  child: SizedBox(
                    width: screenWidth * 0.8, // 80% of screen width
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.white,
                        foregroundColor: AppColors.primary,
                        padding: EdgeInsets.symmetric(
                          vertical: buttonVerticalPadding,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              screenWidth * 0.04), // 4% of screen width
                        ),
                        elevation: 0,
                      ),
                      child: Text(
                        'Get Started',
                        style: TextStyle(
                          fontSize: buttonFontSize,
                          fontWeight: FontWeight.w600,
                          color: AppColors.black,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
