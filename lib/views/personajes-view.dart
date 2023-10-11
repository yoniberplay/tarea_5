import 'package:flutter/material.dart';

class personajes_view extends StatefulWidget {
  @override
  _personajes_view createState() => _personajes_view();
}

class _personajes_view extends State<personajes_view> {
  void personajeModal(DescripcionPersonaje personaje) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.red.shade800,
          title: Center(
            child: Text(personaje.title,
                style: const TextStyle(
                  fontSize: 20, // Tamaño de fuente grande
                  color: Colors.white, // Color blanco
                  fontWeight: FontWeight.bold, // Fuente en negrita
                )),
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Image.asset(
                personaje.foto,
                width: 300,
                height: 200,
              ), // Reemplaza con la URL de la imagen
              SizedBox(height: 16),
              Text(personaje.descripcion,
                  style: const TextStyle(
                    fontSize: 16, // Tamaño de fuente gra
                    color: Colors.white, // Color blanco
                    fontWeight: FontWeight.bold, // Fuente en negrita
                  )),
            ],
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Cerrar',
                  style: TextStyle(
                    fontSize: 18, // Tamaño de fuente grande
                    color: Colors.white, // Color blanco
                    fontWeight: FontWeight.bold,
                    // Fuente en negrita
                  )),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black, // Color de fondo negro
                  foregroundColor: Colors.white, // Color del texto blanco
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(30), // Bordes redondeados
                    side: const BorderSide(
                        color: Colors.red, width: 2.0), // Borde rojo
                  ),
                ),
                onPressed: () {
                  personajeModal(const DescripcionPersonaje(
                      1,
                      'Raymond Reddington',
                      'Interpretado por James Spader. \nEs un exagente del gobierno y uno de los criminales más buscados del mundo. \nSe entrega al FBI y ofrece ayudar a atrapar a otros criminales a cambio de inmunidad. \nConocido por su astucia, inteligencia y secreto trasfondo.',
                      'assets/raymond.jpeg'));
                },
                child: const Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    // Icon(Icons.dangerous_outlined),
                    // SizedBox(width: 8),
                    // Icono que se agrega antes del texto
                    Text('Raymond Reddington',
                        style: TextStyle(
                          fontSize: 20, // Tamaño de fuente grande
                          color: Colors.white, // Color blanco
                          fontWeight: FontWeight.bold, // Fuente en negrita
                        )),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black, // Color de fondo negro
                  foregroundColor: Colors.white, // Color del texto blanco
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(30), // Bordes redondeados
                    side: const BorderSide(
                        color: Colors.red, width: 2.0), // Borde rojo
                  ),
                ),
                onPressed: () {
                  personajeModal(const DescripcionPersonaje(
                      2,
                      'Elizabeth Keen',
                      'Interpretada por Megan Boone. \nEs una agente del FBI y la protagonista de la serie. \nComienza como una joven agente novata y se convierte en una pieza clave en la colaboración con Reddington. \nA lo largo de la serie, descubre secretos sobre su propio pasado que la relacionan con Reddington.',
                      'assets/elizabeth.jpg'));
                },
                child: const Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    // Icon(Icons.local_police_rounded),
                    //SizedBox(width: 8),
                    // Icono que se agrega antes del texto
                    Text('Elizabeth Keen',
                        style: TextStyle(
                          fontSize: 20, // Tamaño de fuente grande
                          color: Colors.white, // Color blanco
                          fontWeight: FontWeight.bold, // Fuente en negrita
                        )),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black, // Color de fondo negro
                  foregroundColor: Colors.white, // Color del texto blanco
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(30), // Bordes redondeados
                    side: const BorderSide(
                        color: Colors.red, width: 2.0), // Borde rojo
                  ),
                ),
                onPressed: () {
                  personajeModal(const DescripcionPersonaje(
                      3,
                      'Harold Cooper',
                      'Interpretado por Harry Lennix, Harold Cooper es el director asistente del FBI en la serie.\nEs el supervisor de Elizabeth Keen y Raymond Reddington en su unidad de trabajo especial.\nA menudo, actúa como una figura de autoridad, tratando de mantener el equilibrio entre las actividades de Reddington y las regulaciones del FBI.\nSu personaje muestra lealtad tanto a la agencia como a su equipo.\n',
                      'assets/harold.jpg'));
                },
                child: const Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    // Icon(Icons.local_police_outlined),
                    // SizedBox(width: 8),
                    // Icono que se agrega antes del texto
                    Text('Harold Cooper',
                        style: TextStyle(
                          fontSize: 20, // Tamaño de fuente grande
                          color: Colors.white, // Color blanco
                          fontWeight: FontWeight.bold, // Fuente en negrita
                        )),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DescripcionPersonaje {
  const DescripcionPersonaje(
      this.index, this.title, this.descripcion, this.foto);
  final int index;
  final String title;
  final String descripcion;
  final String foto;
}
