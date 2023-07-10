import 'package:flutter/material.dart';
import 'package:management_provider/screens/about.dart';
import 'package:management_provider/screens/draft_page.dart';
import 'package:management_provider/screens/hero_overview.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(50),
        margin: const EdgeInsets.only(top: 50),
        child: Center(
          child: Column(
            children: [
              InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed(HeroOverviewScreen.routeName);
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color.fromARGB(255, 42, 42, 42),
                  ),
                  height: 80,
                  width: 400,
                  child: const Center(
                    child: Text(
                      "HERO",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 30),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed(DraftPage.routeName);
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color.fromARGB(255, 42, 42, 42),
                  ),
                  margin: const EdgeInsets.only(top: 40),
                  height: 80,
                  width: 400,
                  child: const Center(
                    child: Text(
                      "DRAFT",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 30),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed(AboutPage.routeName);
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color.fromARGB(255, 42, 42, 42),
                  ),
                  margin: const EdgeInsets.only(top: 40),
                  height: 80,
                  width: 400,
                  child: const Center(
                    child: Text(
                      "ABOUT",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 30),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.black,
    );
  }
}
