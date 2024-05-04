import 'package:flutter/material.dart';

// Definición de una clase que representa un widget llamado AnatomiaWidget
class AnatomiaWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Anatomía'),
      ),
      body: Center(
        child: Text(
          '¡Hola, mundo!',
          style: TextStyle(fontSize: 24.0),
        ),
      ),
    );
  }
}

