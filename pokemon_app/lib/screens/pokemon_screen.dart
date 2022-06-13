import 'package:flutter/material.dart';
import '../widgets/pokemon_search.dart';

class PokemonScreen extends StatelessWidget {
  const PokemonScreen({Key? key}) : super(key: key);

  static const routeName = '/pokemon';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(131, 238, 197, 1),
        title: const Text('Search your Pokemon'),
        actions: [
          // Navigate to the Search Screen
          IconButton(
            onPressed: () => Navigator.of(context)
                .push(MaterialPageRoute(builder: (_) => const PokemonSearch())),
            icon: const Icon(Icons.search),
          )
        ],
      ),
    );
  }
}
