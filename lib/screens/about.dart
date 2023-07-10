import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  static const routeName = '/about-page';
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'ABOUT',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color(0xFF121212),
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(10),
          color: const Color(0xFF121212),
          height: 450,
          width: 300,
          child: const Text("jdhaksjhdajhdjkhk",
              style: TextStyle(color: Colors.white)),
        ),
      ),
      backgroundColor: Colors.black,
    );
  }
}
