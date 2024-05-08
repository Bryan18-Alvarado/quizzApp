import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tiedepeli/sciences/biotecnologia.dart';
import 'package:tiedepeli/ui/shared/color.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tiedepeli/screens/bioscience.dart';

// ignore: must_be_immutable
class ResultScreenBiotecnologia extends StatefulWidget {
  int score;
  ResultScreenBiotecnologia(this.score, {Key? key}) : super(key: key);

  @override
  _ResultScreenState createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreenBiotecnologia> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.pripmaryColor, // Corregí el nombre del color
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: double.infinity,
            child: Text(
              "¡Felicidades! Biotecnología",
              textAlign: TextAlign.center,
              style: GoogleFonts.alkatra(
                textStyle:
                    Theme.of(context).textTheme.headline4, // Corregí el estilo
                color: Colors.white,
                fontSize: 40.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 45.0,
          ),
          Text(
            "Tu puntaje es:",
            style: GoogleFonts.alkatra(
              textStyle:
                  Theme.of(context).textTheme.headline4, // Corregí el estilo
              color: Colors.white,
              fontSize: 34.0,
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Text(
            "${widget.score}",
            style: TextStyle(
              color: Colors.orange,
              fontSize: 85.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 100.0,
          ),
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => BiotecnologiaWidget(),
                ),
              );
            },
            style: ButtonStyle(
              shape: MaterialStateProperty.all<OutlinedBorder>(
                StadiumBorder(),
              ),
              backgroundColor: MaterialStateProperty.all<Color>(
                AppColor.secondaryColor,
              ),
              padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                EdgeInsets.all(18.0),
              ),
            ),
            child: Text(
              "Regresar",
              style: TextStyle(color: Colors.white),
            ),
          ),
          SizedBox(
            height: 10.0, // Espacio adicional entre los botones
          ),
          Container(
            margin: EdgeInsets.only(
                bottom: 30.0), // Ajuste vertical del botón "Continuar"
            child: TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BiosciencePage(),
                  ),
                );
              },
              style: ButtonStyle(
                shape: MaterialStateProperty.all<OutlinedBorder>(
                  StadiumBorder(),
                ),
                backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                  EdgeInsets.all(18.0),
                ),
              ),
              child: Text(
                "Continuar",
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
