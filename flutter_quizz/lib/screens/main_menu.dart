import 'package:flutter/cupertino.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_quizz/screens/quizz_screen.dart';
import 'package:flutter_quizz/ui/shared/color.dart';


class MainMenu extends StatefulWidget {
  const MainMenu({Key? key, required }) : super(key: key);

  @override
  _MainMenuState createState() => _MainMenuState();
}

class _MainMenuState extends State<MainMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.pripmaryColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 48.0,
          horizontal: 12.0,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Icono de la aplicación
            Icon(
              Icons.eco, // Cambia esto por el icono que desees
              size: 120, // ajusta este valor según sea necesario
              color: Colors.green,
            ),
            const SizedBox(height: 20), // espacio entre el icono y los botones
            const Center(
              child: Text(
                "Tiedepeli",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 48,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Montserrat', // Usando la fuente Montserrat
                ),
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Botón para iniciar el cuestionario
                  RawMaterialButton(
                    onPressed: () {
                      // Navegando a la pantalla del cuestionario
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => QuizzScreen(),
                        ),
                      );
                    },
                    shape: const StadiumBorder(),
                    fillColor: AppColor.secondaryColor,
                    child: const Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 12.0,
                        horizontal: 24.0,
                      ),
                      child: Text(
                        "Iniciar BIOQUIZZ",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 26.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20), // espacio entre los botones
                  // Botón para repasar preguntas
                  // RawMaterialButton(
                  //   onPressed: () {
                  //     // Aquí puedes agregar la lógica para repasar preguntas
                  //   },
                  //   shape: const StadiumBorder(),
                  //   fillColor: AppColor.secondaryColor,
                  //   child: const Padding(
                  //     padding: EdgeInsets.symmetric(
                  //       vertical: 12.0,
                  //       horizontal: 24.0,
                  //     ),
                  //     child: Text(
                  //       "Revisar preguntas",
                  //       style: GoogleFonts.lobster(
                  //         textStyle: TextStyle(
                  //           color: Colors.white,
                  //           fontSize: 26.0,
                  //           fontWeight: FontWeight.bold
                  //         ),
                  //       ),
                  //     ),
                  //   ),
                  // ),
                ],
              ),
            ),
            const Center(
              child: Text(
                "Más que un Colegio, una  Gran Familia",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontFamily: 'arial black'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
