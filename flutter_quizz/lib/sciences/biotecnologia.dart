import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Biotecnología',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BiotecnologiaWidget(),
    );
  }
}

class BiotecnologiaWidget extends StatefulWidget {
  @override
  _BiotecnologiaWidgetState createState() => _BiotecnologiaWidgetState();
}

class _BiotecnologiaWidgetState extends State<BiotecnologiaWidget> {
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
        title: Text('Biotecnología'),
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
    return Center(
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
                    'La biotecnología es un conjunto de técnicas que utiliza células vivas, cultivo de tejidos o moléculas derivadas de un organismo, por ejemplo, enzimas, para obtener o modificar un producto, mejorar una planta o un animal o desarrollar un microorganismo para utilizarlo con un propósito específico.\n\n',
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.green),
              ),
              TextSpan(
                text:
                    'Se trata de procesos tecnológicos asociados a organismos vivos y a los procesos biológicos (por ejemplo, fermentación de determinados productos, utilización tecnológica de enzimas, producción de proteínas recombinantes).\n\n',
                style: TextStyle(color: Colors.grey[700]),
              ),
              TextSpan(
                text:
                    'Esta actividad se apoya sobre el conocimiento de determinados procesos biológicos básicos (biología molecular y genética) y ofrece instrumentos para el desarrollo de la agricultura, la pesca, la actividad forestal y las industrias alimentarias de manera sostenible. Cuando se integra debidamente con otras tecnologías para la producción de alimentos, productos agrícolas y servicios, la biotecnología es una herramienta de gran importancia para satisfacer las necesidades de una población en crecimiento.\n\n',
                style: TextStyle(color: Colors.grey[700]),
              ),
              TextSpan(
                text:
                    'La biotecnología es el uso industrial de la biología, es decir, a la aplicación de los principios y saberes sobre el funcionamiento de la vida, a la resolución de problemas diarios del ser humano. Otra forma de entenderlo es que la biotecnología es la ciencia que emplea organismos vivos o sus derivados con fines tecnológicos e industriales.\n\n',
                style: TextStyle(color: Colors.grey[700]),
              ),
              TextSpan(
                text:
                    'La biotecnología se basa en los saberes de la química, física, ingeniería, biología, medicina y veterinaria, para emplear los procesos propios de la vida como una herramienta transformadora, aplicada a compuestos y materiales orgánicos e inorgánicos. Ello no siempre implica la modificación genética, de modo que ambos campos no deben confundirse.\n\n',
                style: TextStyle(color: Colors.grey[700]),
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
    return Center(
      child: Text(
        'Tipos de Biotecnología',
        style: TextStyle(fontSize: 24.0),
      ),
    );
  }
}

class UsosWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Usos de la Biotecnología',
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
        'Quizes de Biotecnología',
        style: TextStyle(fontSize: 24.0),
      ),
    );
  }
}
