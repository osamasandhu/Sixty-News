import 'package:flutter/material.dart';
import 'package:sixty_app/reels_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ReelsPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
