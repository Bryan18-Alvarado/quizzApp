import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BiosciencePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      appBar: AppBar(
        title: Text(
          'Bioscience',
          style: GoogleFonts.alkatra(
              textStyle:
                  Theme.of(context).textTheme.headline4, // Corregí el estilo
              color: Colors.black,
              fontSize: 34.0,
            ),
          ),
        centerTitle: true,
        
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [ // Espacio entre "Bioscience" y "Bienvenido"
            Text(
              'Bienvenido a la página de Bioscience!',
              style: TextStyle(fontSize: 24.0),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

