import 'package:flutter/material.dart';
import 'register.dart'; // Importer le fichier register.dart

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ChefConnect',
      initialRoute: '/', // Route initiale de l'application
      routes: {
        '/': (context) => MyHomePage(title: 'ChefConnect'), // Page d'accueil
        '/register': (context) => Register(), // Route pour le composant d'inscription
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  const MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/register'); // Naviguer vers la page d'inscription
          },
          child: Text('Register'), // Bouton pour naviguer vers la page d'inscription
        ),
      ),
    );
  }
}
