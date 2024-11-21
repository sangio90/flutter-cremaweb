import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '/state/myappstate.dart';

class FavoritesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var appState = context.watch<MyAppState>();
    var favorites = appState.favorites;

    if (appState.favorites.isEmpty) {
      return Center(
        child: Text('Nessun nome inserito.'),
      );
    }

    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Text(
                  style: TextStyle(
                      fontSize: 22, decoration: TextDecoration.underline),
                  'I tuoi nomi preferiti sono ${appState.favorites.length}:'),
            ],
          ),
        ),
        for (var pair in favorites)
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: ElevatedButton.icon(
                  onPressed: () {
                    appState.toggleFavorite(pair: pair);
                  },
                  icon: Icon(Icons.favorite),
                  label: Text(pair.asLowerCase),
                ),
              ),
            ],
          ),
      ],
    );
  }
}
