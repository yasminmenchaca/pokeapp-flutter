import 'package:flutter/material.dart';
import 'package:pokemon_flutter/pokemon.dart';

class PokeDetail extends StatelessWidget {
  final Pokemon pokemon;

  PokeDetail({this.pokemon});

  bodyWidget() => Stack(
        children: <Widget>[
          Container(
            child: Card(
              child: Column(
                children: <Widget>[
                  Text(pokemon.name),
                  Text('Height: ${pokemon.height}'),
                  Text('Weight: ${pokemon.weight}'),
                  Text('Types'),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: pokemon.type
                        .map((t) => FilterChip(
                            backgroundColor: Colors.amber,
                            label: Text(t),
                            onSelected: (b) {}))
                        .toList(),
                  ),
                  Text('Weakness'),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: pokemon.weaknesses
                        .map((t) => FilterChip(
                            backgroundColor: Colors.amber,
                            label: Text(t),
                            onSelected: (b) {}))
                        .toList(),
                  ),
                  Text('Next Evolution'),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: pokemon.nextEvolution
                        .map((n) => FilterChip(
                            backgroundColor: Colors.amber,
                            label: Text(n.name),
                            onSelected: (b) {}))
                        .toList(),
                  ),
                ],
              ),
            ),
          )
        ],
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.red,
        title: Text(pokemon.name),
      ),
      body: bodyWidget(),
    );
  }
}
