import 'package:flutter_quizz/model/question_model.dart';
// import 'package:quizz_app/screens/review_quizz.dart';
import 'package:flutter_quizz/data/questions_example.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';


List<QuestionModel> questions = [
  QuestionModel(
    "¿Qué estudia la biologia celular?",
    {
      "creación de dispositivos móviles": false,
      "manejo de las enfermedades": false,
      "Estudio de las celulas": true,
      "enfocada en la reproducción de medicamentos": false,
    },
    
  ),
  QuestionModel("¿Qué es la unidad básica de la vida?", {
    "Tejido": false,
    "Órgano": false,
    "Célula": true,
    "Mólecula": false,
  }),
  QuestionModel("Cuáles son los componentes principales de una célula?", {
    "Tejido, órgano y sistema": false,
    "Núcleo, citoplasma y membrana celular": true,
    "Átomo, molécula y célula": false,
    "ADN, molécula y célula": false,
  }),
  QuestionModel("¿Cuál es la función de la membrana celular?", {
    "Controlar el paso de sustancias de la célula": false,
    "Producir energía para la célula": false,
    "Almacena información genética": true,
    "Sintetizar proteínas": false,
  }),
  QuestionModel("¿Qué tipo de célula es responsable de la fotosíntesis?", {
    "Animal": false,
    "Vegetal": true,
    "procariota": false,
    "eucariota": false,
  }),
  QuestionModel("¿Qué es la biodiversidad?", {
    "La capacidad de un organismo para adaptarse a su entorno": false,
    "La transmisión de rasgos de padres a hijos": false,
    "La variedad de vida en la Tierra": true,
    "Tecnologia que utiliza organismos vivos para obtener productos": false,
  }),
  QuestionModel(
      "¿Qué es la herencia?", {
    "La síntesis de proteínas": false,
    "La división celular": false,
    "La capacidad de un organismo para adaptarse a su entorno": false,
    "La transmisión de rasgos de padres a hijos": true,
  }),
  QuestionModel("¿Qué es un gen?", {
    "Una unidad de herencia que determina un rasgo": false,
    "Un tipo de célula": false,
    "Una molécula de ADN": true,
    "una proteina": false,
  }),
  QuestionModel(
      "¿Qué es la ecología?",
      {
        "El estudio de los seres vivos y su relación con el medio ambiente": true,
        "la rama de la biología que estudia las células": false,
        "la ciencia que estudia la herencia": false,
        "La tecnología que utiliza organismos vivos para obtener productos": false,
      }),
  QuestionModel(
      "¿Cuáles son los niveles de organización de la ecología?", {
    "Bacteria, virus, protozoo y hongo": false,
    "Átomo, molécula, célula y tejido": false,
    "Gen, cromosoma, ADN y ARN": false,
    "Población, comunidad, ecosistema y biosfera": true,
  }),
    QuestionModel(
    "¿Qué es el ciclo del carbono?",
    {
      "El ciclo de vida de una célula": false,
      "El proceso de transmisión de rasgos de padres a hijos": false,
      "El proceso de transformación del carbono en diferentes formas en el planeta": true,
      "La modificación del material genético de un organismo": false,
    },
  ),
  QuestionModel("¿Qué son los microorganismos?", {
    "moléculas de ADN": false,
    "Proteinas": false,
    "Células individuales": false,
    "Seres vivos pequeños que no pueden verse a simple vista": true,
  }),
  QuestionModel("¿Qué tipos de microorganismos existen?", {
    "Bacterias, virus, hongos y protozoos": true,
    "Animales, plantas y hongos": false,
    "células vegetales": false,
  }),
  QuestionModel("¿Qué es un alelo?", {
    "La molécula de ADN que contiene la información genética": false,
    "Una unidad de herencia que determina un rasgo": false,
    "Una forma diferente de un gen": true,
    "La proteína que se produce a partir de un gen": false,
  }),
  QuestionModel("¿Qué es un ecosistema?", {
    "Una comunidad de organismos que interactúan entre sí y con su entorno físico": true,
    "El estudio de los seres vivos y su relación con el medio ambiente": false,
    "La transmisión de rasgos de padres a hijos": false,
    "La tecnología que utiliza organismos vivos para obtener productos": false,
  }),
  QuestionModel("¿Qué es la biodegradación?", {
    "La sobreexplotación de los recursos naturales": false,
    "La extinción de una especie": false,
    "El proceso por el cual los organismos descomponen la materia orgánica": true,
    "La contaminación del medio ambiente por sustancias químicas nocivas": false,
  }),
  QuestionModel(
      "¿Cómo se transportan las moléculas grandes dentro de la célula?", {
    "Por transporte activo.": false,
    "Por difusión simple y difusión facilitada": false,
    "Por osmosis.": false,
    "Por endocitosis y exocitosis": true,
  }),
  QuestionModel("¿Qué son las bacterias?", {
    "Hongos microscópicos que pueden causar infecciones.": false,
    "Virus que infectan a las bacterias.": false,
    "Células procariotas unicelulares, algunas de las cuales pueden causar enfermedades": true,
    "Parásitos unicelulares que pueden causar enfermedades.": false,
  }),
  QuestionModel(
      "¿Qué es ADN",
      {
        "Una proteína que se produce a partir de un gen.": false,
        "Una unidad de herencia que determina un rasgo.": false,
        "Una molécula que almacena la información genética.": true,
        "La forma en que se transmite la información genética de padres a hijos.": false,
      }),
  QuestionModel(
      "¿Qué son las células madre?", {
    "Células con la capacidad de convertirse en variados tipos de células": true,
    "Células que se encuentran en la sangre": false,
    "Células que se encuentran en los huesos": false,
  }),
];

