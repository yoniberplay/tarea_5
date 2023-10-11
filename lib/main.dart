import 'package:flutter/material.dart';
import 'package:tarea_5/views/PortadaView.dart';
import 'package:tarea_5/views/personajes-view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'The Blacklist',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Tarea 5'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int posicion = 0;

  static var pantallas = [
    const PortadaView(),
    personajes_view(),
  ];
  static const List<Destination> allDestinations = <Destination>[
    Destination(0, 'Portada', Icons.portrait, Colors.red),
    Destination(1, 'Personajes', Icons.people, Colors.red),
    Destination(3, 'Momentos', Icons.local_movies, Colors.red),
    Destination(4, 'Acerca de', Icons.info, Colors.red),
    Destination(6, 'Contratame', Icons.contact_page, Colors.red),
  ];

  void mostrarPantalla(int index) {
    setState(() {
      posicion = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
        ),
        body: IndexedStack(
          index: posicion,
          children: pantallas,
        ),
        bottomNavigationBar: NavigationBar(
          backgroundColor: Colors.black,
          selectedIndex: posicion,
          onDestinationSelected: (int index) {
            mostrarPantalla(index);
          },
          destinations: allDestinations.map((Destination destination) {
            return NavigationDestination(
              icon: Icon(destination.icon, color: destination.color),
              label: destination.title,
            );
          }).toList(),
        ));
  }
}

class Destination {
  const Destination(this.index, this.title, this.icon, this.color);
  final int index;
  final String title;
  final IconData icon;
  final MaterialColor color;
}
