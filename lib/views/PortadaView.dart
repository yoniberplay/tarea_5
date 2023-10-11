import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class PortadaView extends StatelessWidget {
  const PortadaView({super.key});

  @override
  Widget build(BuildContext context) {
    //final colors = Theme.of(context).colorScheme;

    return Container(
        color: Colors.black,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                'assets/portada.jpeg',
                width: 400,
                height: 400,
              ),
              SizedBox(height: 20),
              Text('The Blacklist',
                  style: TextStyle(
                    fontSize: 36, // Tamaño de fuente grande
                    color: Colors.white, // Color blanco
                    fontWeight: FontWeight.bold, // Fuente en negrita
                  )),
            ],
          ),
        ));
  }
}
