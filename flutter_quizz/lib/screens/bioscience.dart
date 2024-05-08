import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tiedepeli/sciences/anatomia.dart';
import 'package:tiedepeli/sciences/Genetica.dart';
import 'package:tiedepeli/sciences/biotecnologia.dart';
import 'package:tiedepeli/ui/shared/color.dart';

class BiosciencePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.pripmaryColor,
      appBar: AppBar(
        title: Text(
          'Bioscience',
          style: GoogleFonts.alkatra(
            textStyle: Theme.of(context).textTheme.headlineMedium,
            color: const Color.fromARGB(255, 31, 133, 37),
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
                fontSize: 40,
                textStyle: Theme.of(context).textTheme.headline4,
                color: Color.fromARGB(255, 255, 255, 255),
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 20,
            ), // Espacio entre "Choose on:" y los botones
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => BiotecnologiaWidget()));
                    },
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<OutlinedBorder>(
                        RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(10.0), // Bordes redondeados
                          side: BorderSide(color: Colors.black), // Borde negro
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
                      "Biotecnología",
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
                          MaterialPageRoute(
                              builder: (context) => AnatomiaWidget()));
                    },
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<OutlinedBorder>(
                        RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(10.0), // Bordes redondeados
                          side: BorderSide(color: Colors.black), // Borde negro
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
                      "Anatomía",
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
                          MaterialPageRoute(
                              builder: (context) => GeneticaWidget()));
                    },
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<OutlinedBorder>(
                        RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(10.0), // Bordes redondeados
                          side: BorderSide(color: Colors.black), // Borde negro
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
                      "Genética",
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
