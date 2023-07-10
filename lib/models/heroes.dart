import 'package:flutter/foundation.dart';

class Heros {
  final String? id;
  final String? name;
  final String? role;
  final String? type;
  final String? workwell;
  final String? image;
  final String? counters;
  final String? notrekomendeds;

  Heros({
    @required this.id,
    @required this.name,
    @required this.role,
    @required this.workwell,
    @required this.image,
    @required this.counters,
    @required this.notrekomendeds,
    @required this.type,
  });

//   factory Heros.formJson(Map<String, dynamic> json) {
//     return Heros(
//       id: json['id'],
//       name: json['name'],
//       role: json['role'],
//       workwell: json['workwell'],
//       image: json['image'],
//       counters: json['counters'],
//       notrekomendeds: json['not_rekomendeds'],
//       type: json['type'],
//     );
//   }
}
