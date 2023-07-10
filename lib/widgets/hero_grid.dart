import 'package:flutter/material.dart';

import '../providers/all_heros.dart';
import 'hero_item.dart';
import 'package:provider/provider.dart';

class HeroGrid extends StatelessWidget {
  const HeroGrid({super.key});

  @override
  Widget build(BuildContext context) {
    final heroData = Provider.of<Heroes>(context);
    final allhero = heroData.allheros;
    return GridView.builder(
      padding: const EdgeInsets.all(10.0),
      itemCount: allhero.length,
      itemBuilder: (ctx, i) => HeroItem(
        allhero[i].id!,
        allhero[i].image!,
      ),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        childAspectRatio: 3 / 3,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
      ),
    );
  }
}
