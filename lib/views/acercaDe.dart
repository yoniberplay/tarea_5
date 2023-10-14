import 'package:flutter/material.dart';

class AcercaDe extends StatelessWidget {
  const AcercaDe({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            'assets/acercade.png',
            width: 400,
          ),
          const SizedBox(height: 20),
          Container(
              decoration: const BoxDecoration(
                color: Colors.black,
                border:
                    Border(bottom: BorderSide(color: Colors.red, width: 2.0)),
              ),
              child: const Text(
                'The Blacklist',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              )),
          const SizedBox(height: 5),
          const Text(
            'Creador: Jon Bokenkamp',
            style: TextStyle(fontSize: 18, color: Colors.white),
          ),
          const Text(
            'Cantidad de temporadas: 10',
            style: TextStyle(fontSize: 18, color: Colors.white),
          ),
          const SizedBox(height: 16),
          Container(
              decoration: const BoxDecoration(
                color: Colors.black,
                border:
                    Border(bottom: BorderSide(color: Colors.red, width: 2.0)),
              ),
              child: const Text(
                'Resumen:',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              )),
          const SizedBox(height: 5),
          const Text(
            'The Blacklist es una serie de televisión que sigue a Raymond Reddington, un antiguo agente gubernamental que se rinde a las autoridades y ofrece su ayuda para atrapar a otros delincuentes. A medida que trabaja con el FBI, revela una lista de criminales peligrosos que el gobierno desconoce, desencadenando una serie de eventos intrigantes y llenos de acción.',
            style: TextStyle(fontSize: 16, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
