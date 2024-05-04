import 'package:tiedepeli/model/question_model.dart';
// import 'package:quizz_app/screens/review_quizz.dart';
import 'package:tiedepeli/data/quizzBiotecnologia.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

List<QuestionModel> questions = [
  QuestionModel(
    "¿Qué es la biotecnología?",
    {
      "Un conjunto de técnicas que utilizan organismos vivos  ": true,
      "un conjunto de habilidades que usan organismos unicelulares": false,
      "un conjunto de técnicas que utilizan habilidades para estudiar el avance de la tecnología.":
          false,
    },
  ),
  QuestionModel(
    "¿Cuáles son los tipos de biotecnología según su área de interés? ",
    {
      "Roja, verde, azul, blanca, gris, dorada, naranja, amarilla,  negra":
          true,
      "Celeste, café, negro, violeta, marrón. ": false,
      "Cian, naranja, magenta, aqua": false,
      "Marrón, celeste, naranja, azul, dorado": false,
    },
  ),
  QuestionModel(
    "¿Qué es la biotecnología roja? ",
    {
      "Se centra en la preservación de la vida humana.": true,
      "Se centra en analizar los riesgos a la vida humana.": false,
      "Esta biotecnología se centra en analizar los riegos que puede provocar la población.":
          false,
      "Se centra en predecir los desastres naturales.": false,
    },
  ),
  QuestionModel(
    "¿Qué se busca con la biotecnología verde?  ",
    {
      "Mejorar el sector agropecuario y la alimentación humana.": true,
      "Mejorar la calidad de vida de la población y la reducción de contaminación.":
          false,
      "Esta biotecnología se centra en analizar los riegos que puede provocar la población.":
          false,
      "Mejorar la agroindustria para beneficio de la población.": false,
    },
  ),
  QuestionModel(
    "¿Cuál es el enfoque de la biotecnología azul?  ",
    {
      "Explorar los océanos y sus ecosistemas para obtener materiales biotecnológicos.":
          true,
      "Explorar los océanos en busca de nuevas especies no descubiertas.":
          false,
      "Explorar las especies marinas en busca de una forma de preservación.":
          false,
    },
  ),
  QuestionModel(
    "¿Qué produce la biotecnología blanca?",
    {
      "Energía, materiales y catalizadores aprovechables por el ser humano.":
          true,
      "Energía, materiales y catalizadores para mejorar todos los hábitos para el desarrollo humano.":
          false,
      "Produce cualquier cosa aprovechable para el ser humano.": false,
    },
  ),
  QuestionModel(
    "¿Cuál es el objetivo de la biotecnología gris?",
    {
      "Preservar el medio ambiente mediante soluciones a desastres ambientales.":
          true,
      "Preservar el medio ambiente y buscar futuros proyectos que ayuden al medio ambiente.":
          false,
      "preservar el medio ambiente a través de sololucines alternativas  .":
          false,
    },
  ),
  QuestionModel(
    "¿En qué se basa la biotecnología dorada?",
    {
      "En combinar la biología con la computación para procesar información biológica.":
          true,
      "Se basa en en combinar la biología con la ciencia alternativa para obtener información.":
          false,
      "Combina la biología y la ingeniería para obtener información.": false,
    },
  ),
  QuestionModel(
    "¿Qué aborda la biotecnología marrón?",
    {
      "El estudio y aprovechamiento de los desiertos como fuentes de recursos biotecnológicos.":
          true,
      "El estudio y restauración de los desiertos para fuentes de recursos.":
          false,
      "El aprovechamiento de los recursos proporcionados por el desierto  .":
          false,
    },
  ),
  QuestionModel(
    "¿Cuál es la función de la biotecnología naranja?",
    {
      "Divulgar y educar sobre los beneficios y riesgos de la biotecnología.":
          true,
      "Informar a la población sobre los errores y riesgos de biotecnología.":
          false,
      "Informar y educar acerca de los avances de la biotecnología.": false,
    },
  ),
];
