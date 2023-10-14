import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class PortadaView extends StatelessWidget {
  const PortadaView({super.key});

  @override
  Widget build(BuildContext context) {
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
              const SizedBox(height: 20),
              const Text('The Blacklist',
                  style: TextStyle(
                    fontSize: 36,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  )),
            ],
          ),
        ));
  }
}
