import 'package:flutter/material.dart';
import 'package:tiedepeli/data/quizzBiotecnologia.dart';
import 'package:tiedepeli/screens/result_screenBiotecnologia.dart';
import 'package:tiedepeli/ui/shared/color.dart';
import 'package:google_fonts/google_fonts.dart';

class QuizzBiotecnologia extends StatefulWidget {
  const QuizzBiotecnologia({Key? key}) : super(key: key);

  @override
  _QuizzBiotecnologiaState createState() => _QuizzBiotecnologiaState();
}

class _QuizzBiotecnologiaState extends State<QuizzBiotecnologia> {
  int questionPos = 0;
  int score = 0;
  bool btnPressed = false;
  PageController? _controller;
  String btnText = "Siguiente Pregunta";
  bool answered = false;
  bool levelUnlocked = false;

  @override
  void initState() {
    super.initState();
    _controller = PageController(initialPage: 0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.pripmaryColor,
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: PageView.builder(
          controller: _controller!,
          onPageChanged: (page) {
            setState(() {
              questionPos = page;
              btnText = (page == questionsBiotecnologias.length - 1)
                  ? "Ver resultados"
                  : "Siguiente Pregunta";
              answered = false;
            });
          },
          physics: new NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: double.infinity,
                  child: Text(
                    "Pregunta ${index + 1}/${questionsBiotecnologias.length}",
                    textAlign: TextAlign.start,
                    style: GoogleFonts.abel(
                      textStyle: Theme.of(context).textTheme.displayLarge,
                      color: Color.fromARGB(255, 230, 228, 88),
                      fontSize: 28.0,
                    ),
                  ),
                ),
                Divider(
                  color: Colors.white,
                ),
                SizedBox(
                  height: 10.0,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 100.0,
                  child: Text(
                    "${questionsBiotecnologias[index].questionsBiotecnologia}",
                    style: GoogleFonts.adventPro(
                      textStyle: Theme.of(context).textTheme.displayLarge,
                      color: Colors.white,
                      fontSize: 22.0,
                    ),
                  ),
                ),
                for (int i = 0;
                    i < questionsBiotecnologias[index].answers!.length;
                    i++)
                  Container(
                    width: double.infinity,
                    height: 60.0,
                    margin:
                        EdgeInsets.only(bottom: 20.0, left: 12.0, right: 12.0),
                    child: RawMaterialButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      fillColor: btnPressed
                          ? questionsBiotecnologias[index]
                                  .answers!
                                  .values
                                  .toList()[i]
                              ? Colors.green
                              : Colors.red
                          : AppColor.secondaryColor,
                      onPressed: !answered
                          ? () {
                              if (questionsBiotecnologias[index]
                                  .answers!
                                  .values
                                  .toList()[i]) {
                                score++;
                              }
                              setState(() {
                                btnPressed = true;
                                answered = true;
                              });
                            }
                          : null,
                      child: Text(
                        questionsBiotecnologias[index]
                            .answers!
                            .keys
                            .toList()[i],
                        style: GoogleFonts.alatsi(
                          textStyle: Theme.of(context).textTheme.displayLarge,
                          color: Colors.white,
                          fontSize: 18.0,
                        ),
                      ),
                    ),
                  ),
                SizedBox(
                  height: 40.0,
                ),
                RawMaterialButton(
                  onPressed: () {
                    if (_controller!.page?.toInt() ==
                        questionsBiotecnologias.length - 1) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  ResultScreenBiotecnologia(score)));
                    } else {
                      _controller!.nextPage(
                          duration: Duration(milliseconds: 250),
                          curve: Curves.easeInExpo);

                      setState(() {
                        btnPressed = false;
                      });
                    }
                  },
                  shape: StadiumBorder(),
                  fillColor: Color(0xFF8A0B66),
                  padding: EdgeInsets.all(18.0),
                  elevation: 0.0,
                  child: Text(
                    btnText,
                    style: TextStyle(color: Colors.white),
                  ),
                )
              ],
            );
          },
          itemCount: questionsBiotecnologias.length,
        ),
      ),
    );
  }
}
