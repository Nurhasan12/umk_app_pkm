// lib/main.dart

import 'package:flutter/material.dart';
import 'features/landing/pages/landing_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UMKM Indonesia',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color(0xFF1BAE76),
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF1BAE76),
        ),
      ),
      home: const LandingPage(),
    );
  }
}
