import 'package:flutter/material.dart';
import 'package:dropdown_search/dropdown_search.dart';

class DraftPage extends StatelessWidget {
  static const routeName = '/draft-page';

  final List<String> data = [
    "Jhonson",
    "kadita",
    "Diggie",
    "Karrie",
  ];
  DraftPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF121212),
        title: const Text(
          "DRAFT",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: DropdownSearch<String>(
        popupProps: PopupProps.menu(
          showSelectedItems: true,
          disabledItemFn: (String s) => s.startsWith('I'),
        ),
        items: const ["Jhonson", "Kadita", "Karrie", 'Diggie'],
        dropdownDecoratorProps: const DropDownDecoratorProps(
          dropdownSearchDecoration: InputDecoration(
            labelText: "Menu mode",
            hintText: "country in menu mode",
          ),
        ),
        onChanged: print,
        selectedItem: "",
      ),
      backgroundColor: const Color.fromARGB(255, 240, 238, 238),
    );
  }
}
