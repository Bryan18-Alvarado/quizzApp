import 'package:flutter/material.dart';
import 'package:tiedepeli/screens/quizzBiotecnologia.dart';
import 'package:tiedepeli/screens/quizzGeneticaNivel1.dart';
import 'package:tiedepeli/screens/quizzGeneticaNivel2.dart';
import 'package:tiedepeli/screens/quizzGeneticaNivel3.dart';
import 'package:tiedepeli/ui/shared/color.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Genética',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: GeneticaWidget(),
    );
  }
}

class GeneticaWidget extends StatefulWidget {
  @override
  _BiotecnologiaWidgetState createState() => _BiotecnologiaWidgetState();
}

class _BiotecnologiaWidgetState extends State<GeneticaWidget> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    ConceptoWidget(),
    TiposWidget(),
    UsosWidget(),
    QuizzWidget(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Genética'),
      ),
      backgroundColor: AppColor.pripmaryColor, // Color de fondo de la pantalla
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            label: 'Concepto',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: 'Historia',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: 'Usos',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.assignment),
            label: 'Quizes', // Corregido el label del cuarto ítem
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.green,
        onTap: _onItemTapped,
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}

class ConceptoWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: RichText(
          textAlign: TextAlign.justify,
          text: TextSpan(
            style: TextStyle(
              fontSize: 16.0,
              color: Colors.black,
            ),
            children: [
              TextSpan(
                text:
                    'La genética es una rama de la biología que estudia cómo los caracteres hereditarios se transmiten de generación en generación.\n\nLos genes son las unidades de información que emplean los organismos para transferir un carácter a la descendencia. El gen contiene codificada las instrucciones para sintetizar todas las proteínas de un organismo. Estas proteínas son las que finalmente darán lugar a todos los caracteres de un individuo (fenotipo).',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              TextSpan(
                text:
                    '\n\nCada individuo tiene para cada carácter dos genes, uno que ha hereda de su padre y otro de su madre. Hay genes que son dominantes e imponen siempre la información que contienen. Otros, en cambio, son recesivos y en este caso sólo se expresan en ausencia de los genes dominantes. En otras ocasiones, la expresión o no depende del sexo del individuo; en este caso, se habla de genes ligados a sexo.\n\n',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TiposWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: RichText(
          textAlign: TextAlign.justify,
          text: TextSpan(
            style: TextStyle(
              fontSize: 16.0,
              color: Colors.black,
            ),
            children: [
              TextSpan(
                text:
                    'La historia de la biología genética se remonta a los inicios de la investigación científica y la curiosidad humana por comprender la herencia y la variación biológica. Aquí hay un breve resumen de algunos de los hitos más importantes en el desarrollo de esta disciplina:\n\n',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                ),
              ),
              TextSpan(
                text:
                    'Siglos IV-V a.C.: Hipócrates, el médico griego, sugiere la idea de que la herencia se basa en la transmisión de rasgos de los progenitores a la descendencia.\n\n1850s-1860s: Gregor Mendel, un monje y científico austríaco, descubre las leyes básicas de la herencia a través de sus experimentos con guisantes. Estas leyes son conocidas como las leyes de Mendel.\n\n1869: Friedrich Miescher descubre el ácido nucleico, lo que más tarde se identificará como el componente genético fundamental, el ADN.\n\n1900s: El trabajo de William Bateson y Reginald Punnett contribuye al redescubrimiento de las leyes de Mendel y la introducción de conceptos como la dominancia y la recesividad.\n\n1902: Theodor Boveri y Walter Sutton proponen independientemente la teoría cromosómica de la herencia, en la que sugieren que los cromosomas son la base física de la herencia.\n\n1910s: Thomas Hunt Morgan y sus colegas trabajan con moscas de la fruta para demostrar que los genes se encuentran en cromosomas y descubren la importancia de la recombinación genética.\n\n1928: Frederick Griffith descubre el proceso de transformación en bacterias, lo que implica la transferencia de material genético entre organismos.\n\n1944: Oswald Avery, Colin MacLeod y Maclyn McCarty demuestran que el material genético transferido en el experimento de Griffith es ADN, lo que sugiere que el ADN es el portador de la información hereditaria.\n\n1951: James Watson, Francis Crick, Maurice Wilkins y Rosalind Franklin investigan la estructura del ADN, lo que lleva a la publicación de la famosa estructura en doble hélice en 1953.\n\n',
                style: TextStyle(
                  color: const Color.fromARGB(255, 255, 255, 255),
                ),
              ),
              TextSpan(
                text:
                    'La genética es una rama de la biología que estudia cómo los caracteres hereditarios se transmiten de generación en generación.\n\nLos genes son las unidades de información que emplean los organismos para transferir un carácter a la descendencia. El gen contiene codificada las instrucciones para sintetizar todas las proteínas de un organismo. Estas proteínas son las que finalmente darán lugar a todos los caracteres de un individuo (fenotipo).',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              TextSpan(
                text:
                    '\n\nCada individuo tiene para cada carácter dos genes, uno que ha hereda de su padre y otro de su madre. Hay genes que son dominantes e imponen siempre la información que contienen. Otros, en cambio, son recesivos y en este caso sólo se expresan en ausencia de los genes dominantes. En otras ocasiones, la expresión o no depende del sexo del individuo; en este caso, se habla de genes ligados a sexo.\n\n',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: Text('Detalle'),
    ),
    body: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Biotecnología roja o médica',
              style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'La biotecnología roja o médica consiste en la obtención de sustancias y procedimientos que permitan la preservación de la vida humana, curando enfermedades o previniéndolas.',
              style: TextStyle(fontSize: 16.0),
            ),
          ),
          // Aquí podrías agregar fotos y videos si fuera necesario
        ],
      ),
    ),
  );
}

class UsosWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.pripmaryColor,
      body: ListView(
        children: [
          Divider(
            color: AppColor.pripmaryColor,
          ),
          ListTile(
            title: Text(
              'Diagnóstico de enfermedades genéticas',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14, // Tamaño de fuente

                fontWeight: FontWeight.bold, // Peso de la fuente
                color: Color.fromARGB(255, 255, 255, 255), // Color del texto
              ),
            ),
            // Estilo para el ListTile
            tileColor: Color.fromARGB(
                255, 22, 103, 253), // Color de fondo del ListTile
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0), // Bordes redondeados
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetalleGeneticaEnfermedades(),
                ),
              );
            },
          ),
          Divider(
            color: AppColor.pripmaryColor,
          ),
          ListTile(
            title: Text(
              'Personalización de tratamientos médicos',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14, // Tamaño de fuente

                fontWeight: FontWeight.bold, // Peso de la fuente
                color: Color.fromARGB(255, 255, 255, 255), // Color del texto
              ),
            ),
            tileColor: Color.fromARGB(
                255, 22, 103, 253), // Color de fondo del ListTile
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0), // Bordes redondeados
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetalleGeneticaTratamientosGeneticos(),
                ),
              );
            },
          ),
          Divider(
            color: AppColor.pripmaryColor,
          ),
          ListTile(
            title: Text(
              'Terapias génicas',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14, // Tamaño de fuente

                fontWeight: FontWeight.bold, // Peso de la fuente
                color: Color.fromARGB(255, 255, 255, 255), // Color del texto
              ),
            ),
            tileColor: Color.fromARGB(
                255, 22, 103, 253), // Color de fondo del ListTile
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0), // Bordes redondeados
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetalleGeneticasTerapias(),
                ),
              );
            },
          ),
          Divider(
            color: AppColor.pripmaryColor,
          ),
          ListTile(
            title: Text(
              'Desarrollo de vacunas',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14, // Tamaño de fuente

                fontWeight: FontWeight.bold, // Peso de la fuente
                color: Color.fromARGB(255, 255, 255, 255), // Color del texto
              ),
            ),
            tileColor: Color.fromARGB(
                255, 22, 103, 253), // Color de fondo del ListTile
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0), // Bordes redondeados
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetalleGeneticaVacunas(),
                ),
              );
            },
          ),
          Divider(
            color: AppColor.pripmaryColor,
          ),
          ListTile(
            title: Text(
              'Predictor de riesgos',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14, // Tamaño de fuente

                fontWeight: FontWeight.bold, // Peso de la fuente
                color: Color.fromARGB(255, 255, 255, 255), // Color del texto
              ),
            ),
            tileColor: Color.fromARGB(
                255, 22, 103, 253), // Color de fondo del ListTile
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0), // Bordes redondeados
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetalleGeneticaPredictor(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

class DetalleGeneticaEnfermedades extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.pripmaryColor,
      appBar: AppBar(
        title: Text('Características'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Diagnóstico de enfermedades genéticas',
                style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.green),
                textAlign: TextAlign.justify, // Justificar el texto
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Los avances en materia genética permiten desarrollar pruebas de diagnóstico precoz, nuevos tratamientos o intervenciones que van desde evitar la enfermedad hasta minimizar su gravedad. En concreto, la genética juega un papel crucial en el diagnóstico de enfermedades hereditarias. Los trastornos de este tipo se deben a mutaciones en un solo gen y la identificación de estas mutaciones permiten un diagnóstico preciso y temprano.',
                style: TextStyle(fontSize: 16.0, color: Colors.white),
                textAlign: TextAlign.justify, // Justificar el texto
              ),
            ),
            // Imagen centrada
          ],
        ),
      ),
    );
  }
}

class DetalleGeneticaTratamientosGeneticos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.pripmaryColor,
      appBar: AppBar(
        title: Text('Características'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Personalización de tratamientos médicos',
                style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.green),
                textAlign: TextAlign.justify, // Justificar el texto
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'La genética también está siendo utilizada para personalizar los tratamientos médicos. La identificación de los factores genéticos que influyen en la respuesta a los tratamientos permite a los médicos seleccionar la terapia más efectiva para cada paciente y conseguir mejores resultados con terapias más efectivas.',
                style: TextStyle(fontSize: 16.0, color: Colors.white),
                textAlign: TextAlign.justify, // Justificar el texto
              ),
            ),
            // Imagen centrada
          ],
        ),
      ),
    );
  }
}

class DetalleGeneticasTerapias extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.pripmaryColor,
      appBar: AppBar(
        title: Text('Características'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Terapias génicas',
                style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.green),
                textAlign: TextAlign.justify, // Justificar el texto
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Las terapias génicas son una forma innovadora de tratar enfermedades genéticas. Consisten en la introducción de material genético modificado en las células del paciente con el objetivo de corregir la mutación responsable de la enfermedad. Aunque todavía se encuentra en fase experimental, estas terapias prometen ser una forma efectiva de tratar enfermedades genéticas en el futuro.',
                style: TextStyle(fontSize: 16.0, color: Colors.white),
                textAlign: TextAlign.justify, // Justificar el texto
              ),
            ),
            // Imagen centrada
          ],
        ),
      ),
    );
  }
}

class DetalleGeneticaVacunas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.pripmaryColor,
      appBar: AppBar(
        title: Text('Características'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Desarrollo de vacunas',
                style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.green),
                textAlign: TextAlign.justify, // Justificar el texto
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'La genética está siendo utilizada para el desarrollo de vacunas de una manera más efectiva y segura, incluyendo las vacunas basadas en ARN. Las vacunas genéticas se basan en la producción en laboratorio de proteínas antigénicas (proteínas capaces de generar una respuesta inmune) procedentes del virus. Según los expertos, la tecnología del ADN recombinante o corte y empalme de genes se podría aplicar a muchas enfermedades para las que en la actualidad no hay vacunas preventivas, tales como el SIDA o la malaria.',
                style: TextStyle(fontSize: 16.0, color: Colors.white),
                textAlign: TextAlign.justify, // Justificar el texto
              ),
            ),
            // Imagen centrada
          ],
        ),
      ),
    );
  }
}

class DetalleGeneticaPredictor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.pripmaryColor,
      appBar: AppBar(
        title: Text('Características'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Predictor de riesgos',
                style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.green),
                textAlign: TextAlign.justify, // Justificar el texto
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'La genética también puede ser utilizada para predecir el riesgo de desarrollar enfermedades genéticas y no genéticas. Esto puede ayudar a los médicos a tomar decisiones objetivas sobre la prevención y el tratamiento de estas enfermedades. En este sentido, estos últimos años han cobrado importancia los test genéticos, tanto para detectar la predisposición a padecer ciertas enfermedades hereditarias como para conocer ciertas alteraciones de la salud.',
                style: TextStyle(fontSize: 16.0, color: Colors.white),
                textAlign: TextAlign.justify, // Justificar el texto
              ),
            ),
            // Imagen centrada
          ],
        ),
      ),
    );
  }
}

class QuizzWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.psychology, // Cambia esto por el icono que desees
            size: 120, // ajusta este valor según sea necesario
            color: Colors.white,
          ),
          Text(
            'Quizz de Biotecnología',
            style: TextStyle(
              fontSize: 24.0,
              color: Color.fromARGB(255, 199, 212, 75),
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 40), // Añade un espacio entre el texto y los botones
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                // Utiliza Navigator.push para navegar a QuizzAnatomia
                context,
                MaterialPageRoute(builder: (context) => Quizzgenetica1()),
              );
            },
            child: Text(
              'Nivel 1',
              style: TextStyle(
                fontSize: 24.0,
                color: Colors.blue,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 20), // Añade un espacio entre los botones
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Quizzgenetica2()),
              );
            },
            child: Text(
              'Nivel 2',
              style: TextStyle(
                fontSize: 24.0,
                color: Colors.blue,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 20), // Añade un espacio entre los botones
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Quizzgenetica3()),
              );
            },
            child: Text(
              'Nivel 3',
              style: TextStyle(
                fontSize: 24.0,
                color: Colors.blue,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
