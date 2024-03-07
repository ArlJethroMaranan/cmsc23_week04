import 'package:flutter/material.dart';

class ButtonSample extends StatefulWidget {
  const ButtonSample({super.key});

  @override
  State<ButtonSample> createState() => _ButtonSampleState();
}

class _ButtonSampleState extends State<ButtonSample> {
  List<String> pokemon = [
    "Pikachu",
    "Torchic",
    "Mudkip",
    "Treecko",
    "Charmander",
    "Squirtle",
    "Bulbasaur",
  ];

  int index = 0;

  List<Widget> pokemonDisplay = [];

  Widget pokemonDisplayBuilder() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(pokemon[index], style: const TextStyle(fontSize: 70),),
        const Icon(Icons.favorite)
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        const Text("Pokemon"),
        OutlinedButton(
          onPressed: () => {
            if (index < pokemon.length){
              setState(() {
                pokemonDisplay.add(pokemonDisplayBuilder());
              }),
              index++
            }
          },
          child: const Icon(Icons.add),
        ),
        Column(
          children: pokemonDisplay,
        )
      ],
    ); 
    
    
  }
}
