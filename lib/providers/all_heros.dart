import 'dart:math';

import '../models/heroes.dart';

import 'package:flutter/material.dart';

class Heroes with ChangeNotifier {
  final List<Heros> _allheros =
      //   Heros(
      //       id: "1",
      //       image: "assets/image/jhonson.jpg",
      //       name: "Jhonson",
      //       role: "Tank"),
      //   Heros(
      //       id: "2",
      //       image: "assets/image/diggie.jpg",
      //       name: "Diggie",
      //       role: "Support")
      // ];
      List.generate(
    3,
    (index) {
      return Heros(
          id: "id_${index + 1}",
          name: "Hero ${index + 1}",
          role: 'Ini adalah deskripsi produk ${index + 1}',
          workwell: 'Ini adalah deskripsi produk ${index + 1}',
          image: 'https://picsum.photos/id/$index/200/300',
          counters: 'Ini adalah deskripsi produk ${index + 1}',
          type: 'Ini adalah deskripsi produk ${index + 1}',
          notrekomendeds: 'Ini adalah deskripsi produk ${index + 1}');
    },
  );

  List<Heros> get allheros {
    return [..._allheros];
  }

  Heros findById(heroesId) {
    return _allheros.firstWhere((heroId) => heroId.id == heroesId);
  }

  // void addProduct(){
  //   _allproducts.add(value);
  //   notifyListeners();
  // }
}
