import 'package:flutter/material.dart';

class DropDownSample extends StatefulWidget {
  const DropDownSample({super.key});

  @override
  State<DropDownSample> createState() => _DropDownSampleState();
}

class _DropDownSampleState extends State<DropDownSample> {
  static final List<String> pokemon = [
    "None",
    "Pikachu",
    "Torchic",
    "Mudkip",
    "Treecko",
    "Charmander",
    "Squirtle",
    "Bulbasaur",
  ];

  String currentValue = pokemon[0];

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
      validator: (value) {
        if (currentValue == "None") return "Invalid choice";
        return null;
      },
      items: pokemon.map((pokemonName) {
        return DropdownMenuItem(
          value: pokemonName,
          child: Text(pokemonName),
        );
      }).toList(),
      onChanged: (value) {
        setState(() {
          currentValue = value!;
        });
      },
      value: currentValue,
    );
  }
}

