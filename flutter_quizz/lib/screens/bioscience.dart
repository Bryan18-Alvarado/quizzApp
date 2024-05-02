import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
                  Theme.of(context).textTheme.headlineMedium, // Corregí el estilo
              color: Colors.green[900],
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
              'Choose on:',
              style: GoogleFonts.bodoniModa(
                fontSize: 20.0,
                textStyle:
                 Theme.of(context).textTheme.headline4,
                ),
              textAlign: TextAlign.center,
              
            ),
          ],
        ),
      ),
    );
  }
}

