import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'layouts/home.dart';
import '/state/myappstate.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      // Definizione dello Stato
      create: (context) => MyAppState(),
      // Definizione dell'interfaccia
      child: MaterialApp(
        title: 'Prova CremaWeb',
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        ),
        // Definizione della "home page"
        home: HomePage(),
      ),
    );
  }
}
