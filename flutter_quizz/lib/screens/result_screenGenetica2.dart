import 'package:flutter/material.dart';
import 'package:tiedepeli/screens/quizzGeneticaNivel3.dart'; // Importa el nivel 3
import 'package:tiedepeli/ui/shared/color.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tiedepeli/screens/bioscience.dart';

class ResultScreenGenetica2 extends StatefulWidget {
  int score;
  ResultScreenGenetica2(this.score, {Key? key}) : super(key: key);

  @override
  _ResultScreenState createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreenGenetica2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.pripmaryColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: double.infinity,
            child: Text(
              "¡Resultados Genética!",
              textAlign: TextAlign.center,
              style: GoogleFonts.alkatra(
                textStyle: Theme.of(context).textTheme.headline4,
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
              textStyle: Theme.of(context).textTheme.headline4,
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
                  builder: (context) => BiosciencePage(),
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
            height: 10.0,
          ),
          Container(
            margin: EdgeInsets.only(bottom: 30.0),
            child: widget.score > 5 // Verifica si el puntaje es mayor que 5
                ? TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              Quizzgenetica3(), // Navega al nivel 3
                        ),
                      );
                    },
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<OutlinedBorder>(
                        StadiumBorder(),
                      ),
                      backgroundColor: MaterialStateProperty.all<Color>(
                        Colors.white,
                      ),
                      padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                        EdgeInsets.all(18.0),
                      ),
                    ),
                    child: Text(
                      "Continuar",
                      style: TextStyle(color: Colors.black),
                    ),
                  )
                : Container(
                    alignment: Alignment.center,
                    child: Text(
                      "Necesitas un puntaje mayor que 5 para avanzar al siguiente nivel",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
          ),
        ],
      ),
    );
  }
}
