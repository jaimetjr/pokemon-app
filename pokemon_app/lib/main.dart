import 'package:flutter/material.dart';
import './screens/pokemon_screen.dart';
import './screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final ThemeData theme = ThemeData();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: theme.copyWith(
        scaffoldBackgroundColor: Colors.white,
        backgroundColor: Colors.white,
        primaryColor: const Color.fromRGBO(131, 238, 197, 1),
      ),
      home: const HomeScreen(),
      routes: {
        PokemonScreen.routeName: (ctx) => const PokemonScreen(),
      },
    );
  }
}
