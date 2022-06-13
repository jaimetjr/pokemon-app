import 'package:flutter/material.dart';
import 'package:pokemon_app/screens/pokemon_screen.dart';
import '../widgets/card_item.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        children: [
          CardItem('Pokemons', PokemonScreen.routeName),
          CardItem('Abilities', 'abilitiespage'),
          CardItem('Generations', ''),
          CardItem('Items', ''),
        ],
      ),
    );
  }
}
