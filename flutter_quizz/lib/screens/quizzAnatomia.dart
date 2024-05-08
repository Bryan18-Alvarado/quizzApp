import 'package:flutter/material.dart';
import 'package:tiedepeli/data/quizzAnatomiaNivel1.dart';
import 'package:tiedepeli/screens/result_screenAnatomia.dart';
import 'package:tiedepeli/ui/shared/color.dart';
import 'package:google_fonts/google_fonts.dart';

class QuizzAnatomia1 extends StatefulWidget {
  final Function(int) onCompleted;

  QuizzAnatomia1({required this.onCompleted});

  @override
  _QuizzAnatomia1State createState() => _QuizzAnatomia1State();
}

class _QuizzAnatomia1State extends State<QuizzAnatomia1> {
  int questionPos = 0;
  int score = 0;
  bool btnPressed = false;
  PageController? _controller;
  String btnText = "Siguiente Pregunta";
  bool answered = false;

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
              btnText = (page == questionsAnatomia.length - 1)
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
                    "Pregunta ${index + 1}/${questionsAnatomia.length}",
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
                  height: 200.0,
                  child: Text(
                    "${questionsAnatomia[index].questionsAnatomia}",
                    style: GoogleFonts.adventPro(
                      textStyle: Theme.of(context).textTheme.displayLarge,
                      color: Colors.white,
                      fontSize: 22.0,
                    ),
                  ),
                ),
                for (int i = 0;
                    i < questionsAnatomia[index].answers!.length;
                    i++)
                  Container(
                    width: double.infinity,
                    height: 50.0,
                    margin:
                        EdgeInsets.only(bottom: 20.0, left: 12.0, right: 12.0),
                    child: RawMaterialButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      fillColor: btnPressed
                          ? questionsAnatomia[index].answers!.values.toList()[i]
                              ? Colors.green
                              : Colors.red
                          : AppColor.secondaryColor,
                      onPressed: !answered
                          ? () {
                              if (questionsAnatomia[index]
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
                        questionsAnatomia[index].answers!.keys.toList()[i],
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
                        questionsAnatomia.length - 1) {
                      widget.onCompleted(score); // Llama a la función onCompleted con el puntaje obtenido
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ResultScreenAnatomia(score),
                        ),
                      );
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
          itemCount: questionsAnatomia.length,
        ),
      ),
    );
  }
}

