import 'package:flutter/material.dart';
import 'package:tiedepeli/screens/quizzBiotecnologia.dart';
import 'package:tiedepeli/ui/shared/color.dart';

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
                    'La biotecnología es un conjunto de técnicas que utiliza células vivas, cultivo de tejidos o moléculas derivadas de un organismo, por ejemplo, enzimas, para obtener o modificar un producto, mejorar una planta o un animal o desarrollar un microorganismo para utilizarlo con un propósito específico.\n\n',
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.green),
              ),
              TextSpan(
                text:
                    'Se trata de procesos tecnológicos asociados a organismos vivos y a los procesos biológicos (por ejemplo, fermentación de determinados productos, utilización tecnológica de enzimas, producción de proteínas recombinantes).\n\n',
                style:
                    TextStyle(color: const Color.fromARGB(255, 255, 255, 255)),
              ),
              TextSpan(
                text:
                    'Esta actividad se apoya sobre el conocimiento de determinados procesos biológicos básicos (biología molecular y genética) y ofrece instrumentos para el desarrollo de la agricultura, la pesca, la actividad forestal y las industrias alimentarias de manera sostenible. Cuando se integra debidamente con otras tecnologías para la producción de alimentos, productos agrícolas y servicios, la biotecnología es una herramienta de gran importancia para satisfacer las necesidades de una población en crecimiento.\n\n',
                style:
                    TextStyle(color: const Color.fromARGB(255, 255, 255, 255)),
              ),
              TextSpan(
                text:
                    'La biotecnología es el uso industrial de la biología, es decir, a la aplicación de los principios y saberes sobre el funcionamiento de la vida, a la resolución de problemas diarios del ser humano. Otra forma de entenderlo es que la biotecnología es la ciencia que emplea organismos vivos o sus derivados con fines tecnológicos e industriales.\n\n',
                style:
                    TextStyle(color: const Color.fromARGB(255, 255, 255, 255)),
              ),
              TextSpan(
                text:
                    'La biotecnología se basa en los saberes de la química, física, ingeniería, biología, medicina y veterinaria, para emplear los procesos propios de la vida como una herramienta transformadora, aplicada a compuestos y materiales orgánicos e inorgánicos. Ello no siempre implica la modificación genética, de modo que ambos campos no deben confundirse.\n\n',
                style:
                    TextStyle(color: const Color.fromARGB(255, 255, 255, 255)),
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
    return Scaffold(
      backgroundColor: AppColor.pripmaryColor,
      body: ListView(
        children: [
          Divider(
            color: AppColor.pripmaryColor,
          ),
          ListTile(
            title: Text(
              'Biotecnología roja o médica',
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
                  builder: (context) => DetalleBiotecnologia(),
                ),
              );
            },
          ),
          Divider(
            color: AppColor.pripmaryColor,
          ),
          ListTile(
            title: Text(
              'Biotecnología verde o agrícola',
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
                  builder: (context) => DetalleBiotecnologiaVerde(),
                ),
              );
            },
          ),
          Divider(
            color: AppColor.pripmaryColor,
          ),
          ListTile(
            title: Text(
              'Biotecnología azul o marina',
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
                  builder: (context) => DetalleBiotecnologiaAzul(),
                ),
              );
            },
          ),
          Divider(
            color: AppColor.pripmaryColor,
          ),
          ListTile(
            title: Text(
              'Biotecnología blanca o industrial',
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
                  builder: (context) => DetalleBiotecnologiaBlanca(),
                ),
              );
            },
          ),
          Divider(
            color: AppColor.pripmaryColor,
          ),
          ListTile(
            title: Text(
              'Biotecnología gris o ecológica',
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
                  builder: (context) => DetalleBiotecnologiaGris(),
                ),
              );
            },
          ),
          Divider(
            color: AppColor.pripmaryColor,
          ),
          ListTile(
            title: Text(
              'Biotecnología dorada o informática.',
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
                  builder: (context) => DetalleBiotecnologiaDorada(),
                ),
              );
            },
          ),
          Divider(
            color: AppColor.pripmaryColor,
          ),
          ListTile(
            title: Text(
              'Biotecnología marrón o del desierto.',
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
                  builder: (context) => DetalleBiotecnologiaMarron(),
                ),
              );
            },
          ),
          Divider(
            color: AppColor.pripmaryColor,
          ),
          ListTile(
            title: Text(
              'Biotecnología naranja o informativa.',
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
                  builder: (context) => DetalleBiotecnologiaVerde(),
                ),
              );
            },
          ),
          Divider(
            color: AppColor.pripmaryColor,
          ),
          ListTile(
            title: Text(
              'Biotecnología amarilla o nutricional. ',
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
                  builder: (context) => DetalleBiotecnologiaVerde(),
                ),
              );
            },
          ),
          Divider(
            color: AppColor.pripmaryColor,
          ),
          ListTile(
            title: Text(
              'Biotecnología púrpura o legal.',
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
                  builder: (context) => DetalleBiotecnologiaVerde(),
                ),
              );
            },
          ),
          Divider(
            color: AppColor.pripmaryColor,
          ),
          ListTile(
            title: Text(
              'Biotecnología negra o bélica.',
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
                  builder: (context) => DetalleBiotecnologiaVerde(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

class DetalleBiotecnologia extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Características'),
      ),
      backgroundColor: AppColor.pripmaryColor,
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
                    color: Colors.green),
                textAlign: TextAlign.justify, // Justificar el texto
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'La biotecnología roja o médica consiste en la obtención de sustancias y procedimientos que permitan la preservación de la vida humana, curando enfermedades o previniéndolas.',
                style: TextStyle(fontSize: 16.0, color: Colors.white),
                textAlign: TextAlign.justify,
                // Justificar el texto
              ),
            ),
            // Imagen centrada
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.network(
                  'https://scontent-mia3-1.xx.fbcdn.net/v/t39.30808-6/217836411_4051900398253318_8893724942211173322_n.png?_nc_cat=106&ccb=1-7&_nc_sid=5f2048&_nc_ohc=OM8vYvj8DCoQ7kNvgHB-kcd&_nc_ht=scontent-mia3-1.xx&oh=00_AfDbtABIaT7N7jlts1I4cKg0vZB0CowvWsUGzNly8KOrKQ&oe=663D930C', // Cambia la ruta según la ubicación de tu imagen
                  width:
                      300, // Puedes ajustar el tamaño de la imagen según tus necesidades
                  alignment: Alignment.center, // Centrar la imagen
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//Biotecnología verde
class DetalleBiotecnologiaVerde extends StatelessWidget {
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
                'Biotecnología verde o agrícola',
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
                'Aquella que tiene que ver con el sector agropecuario de la cadena productiva y que busca incidir en la alimentación humana, a través de la obtención de especies más productivas, más resistentes o con nuevas propiedades adicionales.',
                style: TextStyle(fontSize: 16.0, color: Colors.white),
                textAlign: TextAlign.justify, // Justificar el texto
              ),
            ),
            // Imagen centrada
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.network(
                  'https://img.freepik.com/fotos-premium/conceito-de-biotecnologia-verde-ou-grafico-de-biologia-sintetica-de-planta-combinada-com-forma-de-dna_756748-43473.jpg', // Cambia la ruta según la ubicación de tu imagen
                  width:
                      300, // Puedes ajustar el tamaño de la imagen según tus necesidades
                  alignment: Alignment.center, // Centrar la imagen
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DetalleBiotecnologiaAzul extends StatelessWidget {
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
                'Biotecnología azul o marina',
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
                'Se dedica a la exploración de los océanos y sus diversos ecosistemas como una fuente posible de materiales biotecnológicos de importancia.',
                style: TextStyle(fontSize: 16.0, color: Colors.white),
                textAlign: TextAlign.justify, // Justificar el texto
              ),
            ),
            // Imagen centrada
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.network(
                  'https://cdn0.ecologiaverde.com/es/posts/5/6/5/biotecnologia_azul_que_es_y_para_que_sirve_4565_orig.jpg', // Cambia la ruta según la ubicación de tu imagen
                  width:
                      300, // Puedes ajustar el tamaño de la imagen según tus necesidades
                  alignment: Alignment.center, // Centrar la imagen
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DetalleBiotecnologiaBlanca extends StatelessWidget {
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
                'Biotecnología blanca o industrial',
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
                'Es aquella que se interesa por la obtención de energía, materiales o catalizadores aprovechables por el ser humano, tales como biorreactores, biocombustibles, etc.',
                style: TextStyle(fontSize: 16.0, color: Colors.white),
                textAlign: TextAlign.justify, // Justificar el texto
              ),
            ),
            // Imagen centrada
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.network(
                  'https://mercado.com.ar/wp/wp-content/uploads/2022/10/bio.png', // Cambia la ruta según la ubicación de tu imagen
                  width:
                      300, // Puedes ajustar el tamaño de la imagen según tus necesidades
                  alignment: Alignment.center, // Centrar la imagen
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DetalleBiotecnologiaGris extends StatelessWidget {
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
                'Biotecnología gris o ecológica.',
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
                'A diferencia de las demás, su principal objetivo es la preservación del medio ambiente, a través del diseño y la producción de soluciones para desastres medioambientales, como la contaminación o los derrames petroleros, entre otros.',
                style: TextStyle(fontSize: 16.0, color: Colors.white),
                textAlign: TextAlign.justify, // Justificar el texto
              ),
            ),
            // Imagen centrada
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.network(
                  'https://www.centrobiotecnologia.cl/wp-content/uploads/2019/11/biotecnologia-verde.jpg', // Cambia la ruta según la ubicación de tu imagen
                  width:
                      300, // Puedes ajustar el tamaño de la imagen según tus necesidades
                  alignment: Alignment.center, // Centrar la imagen
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DetalleBiotecnologiaDorada extends StatelessWidget {
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
                'Biotecnología dorada o informática.',
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
                'Constituye el ala electrónica e informática de todos estos procesos, que se hermana con la computación para diseñar mecanismos de procesamiento de información de origen biológico.',
                style: TextStyle(fontSize: 16.0, color: Colors.white),
                textAlign: TextAlign.justify, // Justificar el texto
              ),
            ),
            // Imagen centrada
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.network(
                  'https://0901.static.prezi.com/preview/v2/3hpk3nffipivqsdmwqgvjv3crt6jc3sachvcdoaizecfr3dnitcq_3_0.png', // Cambia la ruta según la ubicación de tu imagen
                  width:
                      300, // Puedes ajustar el tamaño de la imagen según tus necesidades
                  alignment: Alignment.center, // Centrar la imagen
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DetalleBiotecnologiaMarron extends StatelessWidget {
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
                'Biotecnología marrón o del desierto.',
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
                'Al igual que la marina, comprende los desiertos como importantes fuentes de recursos biotecnológicos aprovechables por la humanidad.',
                style: TextStyle(fontSize: 16.0, color: Colors.white),
                textAlign: TextAlign.justify, // Justificar el texto
              ),
            ),
            // Imagen centrada
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.network(
                  'https://imgv2-2-f.scribdassets.com/img/document/476834057/original/8273040261/1714397231?v=1', // Cambia la ruta según la ubicación de tu imagen
                  width:
                      300, // Puedes ajustar el tamaño de la imagen según tus necesidades
                  alignment: Alignment.center, // Centrar la imagen
                ),
              ),
            ),
          ],
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
                MaterialPageRoute(builder: (context) => QuizzBiotecnologia()),
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
              // Lógica para redirigir a la segunda interfaz
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
              // Lógica para redirigir a la tercera interfaz
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
