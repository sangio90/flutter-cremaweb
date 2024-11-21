import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

class MyAppState extends ChangeNotifier {
  var current = WordPair.random();
  var favorites = <WordPair>[];

  //Per chi è familiare con gli store di Redux
  //questo equivale alla mutation
  void getNext() {
    current = WordPair.random();
    notifyListeners();
  }

  void toggleFavorite({WordPair? pair = null}) {
    if (null == pair) {
      pair = current;
    }
    if (favorites.contains(pair)) {
      favorites.remove(pair);
    } else {
      favorites.add(pair);
    }
    notifyListeners();
  }
}
