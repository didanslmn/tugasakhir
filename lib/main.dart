import 'package:flutter/material.dart';
import 'package:management_provider/providers/all_heros.dart';
import 'package:management_provider/screens/about.dart';
import 'package:management_provider/screens/draft_page.dart';
import 'package:management_provider/screens/home.dart';
import 'package:provider/provider.dart';

import 'screens/hero_overview.dart';
import 'screens/hero_detail.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Heroes(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'myshop',
        theme: ThemeData(
          fontFamily: 'Lato',
        ),
        home: const HomePage(),
        routes: {
          HeroOverviewScreen.routeName: (ctx) => const HeroOverviewScreen(),
          HeroDetailScreen.routeName: (ctx) => const HeroDetailScreen(),
          DraftPage.routeName: (ctx) => DraftPage(),
          AboutPage.routeName: (ctx) => const AboutPage(),
        },
      ),
    );
  }
}
