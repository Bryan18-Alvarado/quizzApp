
import 'package:tiedepeli/model/questionModelAnatomiaNivel2.dart';
import 'package:tiedepeli/model/question_model.dart';
import 'package:tiedepeli/data/quizzBiotecnologia.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

List<QuestionModelAnatomia2> questionsAnatomia = [
  //1
  QuestionModelAnatomia2(
    "¿Cuál fue la primera obra en utilizar la xilografía para figuras anatómicas?",
    {
     "De sepulturis.": false,
      "Margarita philosophica.": false,
      "Fasciculus Medicinae.": true,
      "Buch der Natur.": false
    },
  ),

    //2
    QuestionModelAnatomia2(
     "¿Qué rama de la anatomía se dedica al estudio del deterioro de los tejidos, órganos y sistemas?",
    {
      "Anatomía vegetal.": false,
      "Anatomía clínica.": false,
      "Anatomía funcional.": false,
      "Anatomía patológica.": true
    },
  ),

    QuestionModelAnatomia2(
    "¿Cuál es el sistema encargado de defender al cuerpo de agentes infecciosos?",
    {
      "Sistema nervioso.": false,
      "Sistema inmunológico.": true,
      "Sistema endocrino.": false,
      "Sistema muscular.": false
    },
  ),

    QuestionModelAnatomia2(
     "¿Qué aparato se encarga del procesamiento y la transformación de los alimentos en nutrientes aprovechables?",
    {
      "Aparato cardiovascular.": false,
      "Aparato respiratorio.": false,
      "Aparato digestivo.": true,
      "Aparato locomotor.": false
    },
  ),

    QuestionModelAnatomia2(
    "¿Cuál es el sistema que regula el metabolismo, la función sexual y el crecimiento del organismo?",
    {
      "Sistema inmunológico.": false,
      "Sistema endocrino.": true,
      "Sistema esquelético.": false,
      "Sistema nervioso.": false
    },
  ),

    QuestionModelAnatomia2(
    "¿Cuál es el encargado de permitir los distintos movimientos del cuerpo?",
    {
      "Sistema nervioso.": false,
      "Sistema muscular.": true,
      "Sistema esquelético.": false,
      "Sistema inmunológico.": false
    },
  ),

    QuestionModelAnatomia2(
    "¿Qué aparato está formado por el corazón, los vasos sanguíneos y la sangre?",
    {
      "Aparato digestivo.": false,
      "Aparato cardiovascular.": true,
      "Aparato respiratorio.": false,
      "Aparato reproductor.": false
    },
  ),

    QuestionModelAnatomia2(
   "¿Qué sistema se encarga de permitir la locomoción del cuerpo?",
    {
       "Aparato locomotor.": true,
      "Sistema inmunológico.": false,
      "Sistema endocrino.": false,
      "Sistema nervioso.": false
    },
  ),

  QuestionModelAnatomia2(
    "¿Cuál es el sistema encargado del procesamiento de los estímulos y la generación de respuestas?",
    {
      "Sistema muscular.": false,
      "Sistema inmunológico.": false,
      "Sistema nervioso.": true,
      "Sistema esquelético.": false
    },
  ),

  QuestionModelAnatomia2(
    "¿Qué aparato es el encargado de la eliminación de los desechos producidos por el organismo?",
    {
      "Aparato cardiovascular.": false,
      "Aparato respiratorio.": false,
      "Aparato digestivo.": false,
      "Aparato excretor.": true
    },
  ),
];
