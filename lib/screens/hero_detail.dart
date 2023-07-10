import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../providers/all_heros.dart';

class HeroDetailScreen extends StatelessWidget {
  // final String title;
  // final double price;

  // ProductDetailScreen(this.title, this.price);
  static const routeName = '/hero-detail';

  const HeroDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final heroId =
        ModalRoute.of(context)?.settings.arguments as String; // is the id!
    final hero = Provider.of<Heroes>(context).findById(heroId);

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Hero Details',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color(0xFF121212),
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 250,
            child: Image.network(
              "${hero.image}",
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Text(
            "${hero.name}",
            style: const TextStyle(
              color: Color.fromARGB(255, 183, 182, 182),
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "${hero.name}",
            style: const TextStyle(
              color: Color.fromARGB(255, 124, 123, 123),
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
          Container(
            height: 3,
            width: 300,
            color: const Color.fromARGB(255, 183, 182, 182),
          ),
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color(0xFF121212)),
            margin: const EdgeInsets.all(20),
            width: 350,
            height: 110,
            child: Column(children: [
              const Text(
                "Workwell",
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(5),
                    margin: const EdgeInsets.only(top: 10),
                    width: 90,
                    height: 30,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color.fromARGB(255, 109, 107, 107)),
                    child: const Text(
                      "data",
                      textAlign: TextAlign.center,
                    ),
                  )
                ],
              )
            ]),
          ),
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color(0xFF121212)),
            margin: const EdgeInsets.all(20),
            width: 350,
            height: 110,
            child: Column(children: [
              const Text(
                "Counter",
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(5),
                    margin: const EdgeInsets.only(top: 10),
                    width: 90,
                    height: 30,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color.fromARGB(255, 109, 107, 107)),
                    child: const Text(
                      "data",
                      textAlign: TextAlign.center,
                    ),
                  )
                ],
              )
            ]),
          )
        ],
      ),
      backgroundColor: Colors.black,
    );
  }
}
