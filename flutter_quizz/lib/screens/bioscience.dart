import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tiedepeli/screens/main_menu.dart';

class BiosciencePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      appBar: AppBar(
        title: Text(
          'Bioscience',
          style: GoogleFonts.alkatra(
            textStyle: Theme.of(context).textTheme.headlineMedium,
            color: Colors.green[900],
            fontSize: 34.0,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Choose on:',
              style: GoogleFonts.bodoniModa(
                fontSize: 20.0,
                textStyle: Theme.of(context).textTheme.headline4,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20), // Espacio entre "Choose on:" y los botones
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MainMenu())
                      );
                    },
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<OutlinedBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.zero,
                        ),
                      ),
                      backgroundColor: MaterialStateProperty.all<Color>(
                        Color.fromARGB(255, 208, 196, 87),
                      ),
                      padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                        EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                      ),
                    ),
                    child: Text(
                      "Biotecnologia",
                      style: TextStyle(color: Colors.black, fontSize: 24),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20), // Espacio entre los botones
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MainMenu())
                      );
                    },
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<OutlinedBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.zero,
                        ),
                      ),
                      backgroundColor: MaterialStateProperty.all<Color>(
                        Color.fromARGB(255, 208, 196, 87),
                      ),
                      padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                        EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                      ),
                    ),
                    child: Text(
                      "Anatomia",
                      style: TextStyle(color: Colors.black, fontSize: 24),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20), // Espacio entre los botones
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      // Aquí puedes añadir la navegación para el botón "Ciencia"
                    },
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<OutlinedBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.zero,
                        ),
                      ),
                      backgroundColor: MaterialStateProperty.all<Color>(
                        Color.fromARGB(255, 208, 196, 87),
                      ),
                      padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                        EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                      ),
                    ),
                    child: Text(
                      "Ciencia",
                      style: TextStyle(color: Colors.black, fontSize: 24),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
