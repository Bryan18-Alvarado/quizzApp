import 'package:flutter/material.dart';
import 'package:tiedepeli/ui/shared/color.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Anatomia',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
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
        title: Text('Anatomia',
        textAlign: TextAlign.center),
        centerTitle:true,
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
            label: 'Quizzes',
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
                  style: TextStyle(fontWeight: FontWeight.bold, color: Colors.green),
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
      // backgroundColor: AppColor.pripmaryColor,
      body: ListView(
        children: [
          ListTile(
            title: Text('Anatomía sistemática o descriptiva.'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetalleAnatomia(),
                ),
              );
            },
          ),
          ListTile(
            title: Text('Anatomía clínica o aplicada.'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetalleAnatomia(),
                ),
              );
            },
          ),
          ListTile(
            title: Text('Anatomía patológica.'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetalleAnatomia(),
                ),
              );
            },
          ),
          ListTile(
            title: Text('Anatomía comparada'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetalleAnatomia(),
                ),
              );
            },
          ),
                    ListTile(
            title: Text('Anatomía funcional o fisiológica'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetalleAnatomia(),
                ),
              );
            },
          ),
                    ListTile(
            title: Text('Anatomía vegetal'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetalleAnatomia(),
                ),
              );
            },
          ),
                    ListTile(
            title: Text('Anatomía animal o veterinaria'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetalleAnatomia(),
                ),
              );
            },
          ),
                    ListTile(
            title: Text('Anatomía humana'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetalleAnatomia(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

class DetalleAnatomia extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       
        title: Text('Detalle de Anatomia'),
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
                style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold, color:Colors.white),
                // style: TextStyle(fontWeight: FontWeight.bold, color: Colors.green)
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'La anatomía sistemática, también conocida como anatomía descriptiva, se enfoca en el estudio detallado de la estructura y organización del cuerpo humano o de otros seres vivos. Se centra en identificar y nombrar cada estructura anatómica de manera precisa y sistemática, utilizando diversos métodos de estudio. Es fundamental en la formación médica y en la práctica clínica, ya que proporciona la base para comprender la estructura y función del cuerpo humano.',
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold, color: Colors.green),
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
      child: Text(
        'Usos de la Anatomia',
        style: TextStyle(fontSize: 24.0),
      ),
    );
  }
}

class QuizzWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Quizes de Anatomia',
        style: TextStyle(fontSize: 24.0),
      ),
    );
  }
}
