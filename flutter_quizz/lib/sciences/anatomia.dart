import 'package:flutter/material.dart';
import 'package:tiedepeli/screens/quizzAnatomia2.dart';
import 'package:tiedepeli/screens/quizzAnatomia3.dart';
import 'package:tiedepeli/ui/shared/color.dart';
import 'package:tiedepeli/screens/quizzAnatomia.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Anatomía',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: AnatomiaWidget(),
    );
  }
}

class AnatomiaWidget extends StatefulWidget {
  @override
  _AnatomiaWidgetState createState() => _AnatomiaWidgetState();
}

class _AnatomiaWidgetState extends State<AnatomiaWidget> {
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
      backgroundColor: AppColor.pripmaryColor,
      appBar: AppBar(
        title: Text('Anatomía',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.indigo),
            textAlign: TextAlign.center),
        centerTitle: true,
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            label: 'Concepto',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: 'Tipos',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: 'Usos',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.assignment),
            label: 'Quizz',
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
      child: Center(
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
                      'La anatomía es una ciencia que estudia la estructura de los seres vivos, esto es, la ubicación y disposición de sus órganos (como los huesos, los músculos y las vísceras) y la relación que existe entre ellos. También se llama anatomía a la propia estructura de los seres vivos. Este término es muy utilizado en ciencias como la medicina y la biología.  \n\n',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.green),
                ),
                TextSpan(
                  text:
                      'La palabra anatomía proviene del griego y está compuesta del adverbio ana (que significa arriba) y el verbo tomé (que significa corte o incisión). La combinación de estas palabras formó el término anatémnein, que significa “cortar de arriba abajo” y también “diseccionar”. \n\n',
                  style: TextStyle(color: Colors.white),
                ),
                TextSpan(
                  text:
                      'El origen de la palabra anatomía no es al azar, dado que la base de esta ciencia consiste en diseccionar cadáveres para su estudio. Quienes estudian alguna rama de la biología, deben estudiar sí o sí la anatomía de sus objetos de estudio, ya sea humana o animal, inclusive vegetal.\n\n',
                  style: TextStyle(color: Colors.white),
                ),
                TextSpan(
                  text:
                      'La anatomia es el uso industrial de la biología, es decir, a la aplicación de los principios y saberes sobre el funcionamiento de la vida, a la resolución de problemas diarios del ser humano. Otra forma de entenderlo es que la biotecnología es la ciencia que emplea organismos vivos o sus derivados con fines tecnológicos e industriales.\n\n',
                  style: TextStyle(color: Colors.white),
                ),
                TextSpan(
                  text:
                      'La anatomia se basa en los saberes de la química, física, ingeniería, biología, medicina y veterinaria, para emplear los procesos propios de la vida como una herramienta transformadora, aplicada a compuestos y materiales orgánicos e inorgánicos. Ello no siempre implica la modificación genética, de modo que ambos campos no deben confundirse.\n\n',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class TiposWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.pripmaryColor,
      body: ListView(
        children: [
          SizedBox(height: 10), // Espacio entre los elementos
          ListTile(
            title: Text('Anatomía sistemática o descriptiva.',
              textAlign: TextAlign.center,
              
              style: TextStyle(
                fontSize: 18.0, // Tamaño de fuente
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            
            tileColor: Color.fromARGB(255, 22, 103, 253), // Color de fondo del ListTile
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0), // Bordes redondeados
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AnatomiaSistematica(),
                ),
              );
            },
          ),
          SizedBox(height: 10), // Espacio entre los elementos
          ListTile(
            title: Text('Anatomía clínica o aplicada.',
            textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18.0, // Tamaño de fuente
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            tileColor: Color.fromARGB(255, 22, 103, 253), // Color de fondo del ListTile
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0), // Bordes redondeados
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AnatomiaClinica(),
                ),
              );
            },
          ),
          SizedBox(height: 10), // Espacio entre los elementos
          ListTile(
            title: Text('Anatomía patológica.',
            textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18.0, // Tamaño de fuente
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            tileColor: Color.fromARGB(255, 22, 103, 253), // Color de fondo del ListTile
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0), // Bordes redondeados
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AnatomiaPatologica(),
                ),
              );
            },
          ),
          SizedBox(height: 10), // Espacio entre los elementos
          ListTile(
            title: Text('Anatomía comparada',
            textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18.0, // Tamaño de fuente
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            tileColor: Color.fromARGB(255, 22, 103, 253), // Color de fondo del ListTile
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0), // Bordes redondeados
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AnatomiaComparada(),
                ),
              );
            },
          ),
          SizedBox(height: 10), // Espacio entre los elementos
          ListTile(
            title: Text('Anatomía funcional o fisiológica',
            textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18.0, // Tamaño de fuente
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            tileColor: Color.fromARGB(255, 22, 103, 253), // Color de fondo del ListTile
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0), // Bordes redondeados
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AnatomiaFuncional(),
                ),
              );
            },
          ),
          SizedBox(height: 10), // Espacio entre los elementos
          ListTile(
            title: Text('Anatomía vegetal',
            textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18.0, // Tamaño de fuente
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            tileColor: Color.fromARGB(255, 22, 103, 253), // Color de fondo del ListTile
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0), // Bordes redondeados
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AnatomiaVegetal(),
                ),
              );
            },
          ),
          SizedBox(height: 10), // Espacio entre los elementos
          ListTile(
            title: Text('Anatomía animal o veterinaria',
            textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18.0, // Tamaño de fuente
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            tileColor: Color.fromARGB(255, 22, 103, 253), // Color de fondo del ListTile
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0), // Bordes redondeados
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AnatomiaAnimal(),
                ),
              );
            },
          ),
          SizedBox(height: 10), // Espacio entre los elementos
          ListTile(
            title: Text('Anatomía humana',
            textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18.0, // Tamaño de fuente
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            tileColor: Color.fromARGB(255, 22, 103, 253), // Color de fondo del ListTile
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0), // Bordes redondeados
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AnatomiaHumana(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}


// concepto de anatomia roja
class AnatomiaSistematica extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tipos de anatomias'),
      ),
      backgroundColor: AppColor.pripmaryColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Anatomía sistemática o descriptiva.',
                style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue),
                // style: TextStyle(fontWeight: FontWeight.bold, color: Colors.green)
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'La anatomía sistemática, también conocida como anatomía descriptiva, se enfoca en el estudio detallado de la estructura y organización del cuerpo humano o de otros seres vivos. Se centra en identificar y nombrar cada estructura anatómica de manera precisa y sistemática, utilizando diversos métodos de estudio. Es fundamental en la formación médica y en la práctica clínica, ya que proporciona la base para comprender la estructura y función del cuerpo humano.',
                style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.green),
              ),
            ),
            // Aquí podrías agregar fotos y videos si fuera necesario
          ],
        ),
      ),
    );
  }
}

class AnatomiaClinica extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tipos de anatomias'),
      ),
      backgroundColor: AppColor.pripmaryColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Anatomía clínica o aplicada',
                style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue),
                // style: TextStyle(fontWeight: FontWeight.bold, color: Colors.green)
              ),
            ),
            
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'La anatomía clínica o aplicada es una rama de la anatomía que se enfoca en el estudio de la estructura del cuerpo humano desde una perspectiva práctica y relevante para la medicina y la práctica clínica. ',
                style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.green),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                ' En lugar de simplemente examinar la disposición y funciones de los órganos y sistemas del cuerpo, la anatomía clínica se centra en cómo estas estructuras se relacionan con la salud, la enfermedad, el diagnóstico y el tratamiento médico.',
                style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Este campo implica el estudio detallado de la anatomía humana en relación con la patología, la fisiología y la práctica médica.',
                style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),

            // Aquí podrías agregar fotos y videos si fuera necesario
          ],
        ),
      ),
    );
  }
}

class AnatomiaPatologica extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tipos de anatomias'),
      ),
      backgroundColor: AppColor.pripmaryColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Anatomía patológica',
                style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue),
                // style: TextStyle(fontWeight: FontWeight.bold, color: Colors.green)
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'La anatomía patológica es una rama de la medicina que se centra en el estudio de las enfermedades a nivel microscópico y macroscópico. Su objetivo principal es identificar y diagnosticar enfermedades mediante el análisis de muestras de tejido, células y fluidos corporales obtenidos a través de biopsias, cirugías y otros procedimientos médicos.',
                style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.green),
              ),
            ),
            // Aquí podrías agregar fotos y videos si fuera necesario
          ],
        ),
      ),
    );
  }
}

class AnatomiaComparada extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tipos de anatomias'),
      ),
      backgroundColor: AppColor.pripmaryColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Anatomía Comparada',
                style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue),
                // style: TextStyle(fontWeight: FontWeight.bold, color: Colors.green)
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'La anatomía comparada es el estudio de las similitudes y diferencias en la estructura anatómica entre diferentes especies. Ayuda a comprender la evolución y las relaciones entre los organismos, así como a identificar características comunes y adaptaciones únicas. Este campo es fundamental para la biología evolutiva y la clasificación de especies, proporcionando información valiosa sobre cómo los organismos se han adaptado a diferentes ambientes y estilos de vida a lo largo del tiempo.',
                style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.green),
              ),
            ),
            // Aquí podrías agregar fotos y videos si fuera necesario
          ],
        ),
      ),
    );
  }
}

class AnatomiaFuncional extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tipos de anatomias'),
      ),
      backgroundColor: AppColor.pripmaryColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Anatomía funcional o fisiológica',
                style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue),
                // style: TextStyle(fontWeight: FontWeight.bold, color: Colors.green)
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'La anatomía funcional, también llamada fisiología, estudia cómo funcionan los sistemas del cuerpo humano para mantenernos vivos y saludables. Es crucial para entender cómo respondemos a nuestro entorno y cómo tratamos enfermedades.',
                style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.green),
              ),
            ),
            // Aquí podrías agregar fotos y videos si fuera necesario
          ],
        ),
      ),
    );
  }
}

class AnatomiaVegetal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tipos de anatomias'),
      ),
      backgroundColor: AppColor.pripmaryColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Anatomía vegetal',
                style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue),
                // style: TextStyle(fontWeight: FontWeight.bold, color: Colors.green)
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'La anatomía vegetal es la rama de la botánica que se enfoca en el estudio de la estructura interna de las plantas. Examina la disposición de tejidos y células en raíces, tallos, hojas, flores y frutos, así como sus funciones y relaciones. Esta disciplina es fundamental para comprender cómo las plantas crecen, se desarrollan, se reproducen y se adaptan a su entorno, lo que es esencial para la agricultura, la horticultura y la conservación de la biodiversidad vegetal.',
                style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.green),
              ),
            ),
            // Aquí podrías agregar fotos y videos si fuera necesario
          ],
        ),
      ),
    );
  }
}

class AnatomiaAnimal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tipos de anatomias'),
      ),
      backgroundColor: AppColor.pripmaryColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Anatomía animal o veterinaria',
                style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue),
                // style: TextStyle(fontWeight: FontWeight.bold, color: Colors.green)
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'La anatomía animal, también conocida como anatomía veterinaria cuando se aplica a los animales domésticos y de granja, es el estudio de la estructura interna y externa de los animales. Se centra en la organización y función de órganos, tejidos y sistemas biológicos en una variedad de especies animales. Este campo es crucial para comprender la salud, el bienestar y el diagnóstico de enfermedades en animales, así como para el diseño de tratamientos y cirugías veterinarias. Además, la anatomía animal es fundamental para la investigación científica, la cría selectiva y la conservación de especies en peligro de extinción.',
                style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.green),
              ),
            ),
            // Aquí podrías agregar fotos y videos si fuera necesario
          ],
        ),
      ),
    );
  }
}

class AnatomiaHumana extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tipos de anatomias'),
      ),
      backgroundColor: AppColor.pripmaryColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Anatomía humana',
                style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue),
                // style: TextStyle(fontWeight: FontWeight.bold, color: Colors.green)
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'La Anatomía humana es el estudio de la estructura del cuerpo humano. Examina la disposición, relación y función de los órganos, tejidos y sistemas que componen el cuerpo humano.',
                style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.green),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                ' Esta disciplina es fundamental para comprender cómo funciona el cuerpo, desde el nivel celular hasta el sistema completo, y es crucial para la práctica médica, la investigación biomédica y la educación en salud. ',
                style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                ' El conocimiento de la anatomía humana es esencial para el diagnóstico y tratamiento de enfermedades, la planificación de procedimientos quirúrgicos y la promoción de la salud y el bienestar en general.',
                style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
            // Aquí podrías agregar fotos y videos si fuera necesario
          ],
        ),
      ),
    );
  }
}

class UsosWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Usos de la Anatomía',
                style: TextStyle(fontSize: 24.0, color: Colors.white),
              ),
              SizedBox(height: 20), // Añade un espacio entre los dos textos
              Text(
                'La anatomía tiene numerosas aplicaciones en diferentes campos. En medicina, por ejemplo, es fundamental para comprender la estructura del cuerpo humano y poder diagnosticar y tratar enfermedades. En el ámbito de la fisioterapia y la rehabilitación, el conocimiento anatómico es esencial para entender cómo funcionan los músculos, huesos y articulaciones, y así poder diseñar tratamientos efectivos. ',
                style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.green),
                textAlign: TextAlign.justify, // Alinea el texto al centro
              ),
              SizedBox(height: 20),
              Text(
                'En la biología y la zoología, la anatomía se utiliza para estudiar la estructura interna y externa de organismos para comprender su evolución, funcionamiento y relaciones filogenéticas. En el campo de la veterinaria, permite comprender la fisiología y patologías de los animales. ',
                style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
                textAlign: TextAlign.justify, // Alinea el texto al centro
              ),
              SizedBox(height: 20),
              Text(
                'Además, la anatomía es crucial en áreas como la biomecánica, la antropología forense, la paleontología y en el diseño de prótesis y dispositivos médicos. En resumen, el conocimiento anatómico es fundamental en muchas disciplinas para comprender la estructura y función de los organismos vivos. ',
                style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.green),
                textAlign: TextAlign.justify, // Alinea el texto al centro
              ),
            ],
          ),
        ),
      ),
    );
  }
}
// Importa la pantalla QuizzAnatomia

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
            'Quizz de Anatomía',
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
                MaterialPageRoute(builder: (context) => QuizzAnatomia1()),
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
                // Utiliza Navigator.push para navegar a QuizzAnatomia
                context,
                MaterialPageRoute(builder: (context) => QuizzAnatomia2()),
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
                MaterialPageRoute(builder: (context) => QuizzAnatomia3()),
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
