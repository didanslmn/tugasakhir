import 'package:flutter/material.dart';

import '../widgets/hero_grid.dart';

class HeroOverviewScreen extends StatelessWidget {
  static const routeName = '/hero-overview';
  const HeroOverviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'HERO',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color(0xFF121212),
      ),
      body: const HeroGrid(),
      backgroundColor: Colors.black,
    );
  }
}
