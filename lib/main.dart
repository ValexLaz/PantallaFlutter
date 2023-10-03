// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bookings'),
        centerTitle: true,
        actions: <Widget>[
          Row(
            children: <Widget>[
              IconButton(
                icon: const Icon(Icons.notifications),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(Icons.search),
                onPressed: () {},
              ),
            ],
          ),
        ],
        backgroundColor: const Color.fromARGB(255, 243, 238, 225),
        leading: IconButton(
          onPressed: () {},
          icon: IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {},
          ),
        ),
      ),
      body: DecoratedBox(
        decoration: BoxDecoration(
          color: Color.fromARGB(
              255, 228, 234, 237), // Cambia esto al color que desees
        ),
        child: ListView(
          children: <Widget>[
            Container(
              color: const Color.fromARGB(
                  255, 243, 238, 225), // Color de fondo del Container
              padding: EdgeInsets.all(10), // Espacio interno para los textos
              child: Column(
                children: <Widget>[
                  Row(
                    // Utilizamos un Row para alinear "TRIPS" y "HOTELS" horizontalmente
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'TRIPS',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(220, 222, 172, 135),
                        ), // Color del texto
                      ),
                      SizedBox(width: 200), // Espacio entre "TRIPS" y "HOTELS"
                      Text(
                        'HOTELS',
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(220, 222, 172, 135),
                        ), // Color del texto
                      ),
                    ],
                  ),
                  SizedBox(
                      height: 20), // Espacio entre la fila de textos y la línea
                  Row(
                    // Nueva fila para la línea y el espacio en blanco
                    children: <Widget>[
                      Expanded(
                        // Columna izquierda con la línea de color
                        child: Container(
                          height: 4, // Altura de la línea
                          color: const Color.fromARGB(
                              255, 234, 90, 90), // Color de la línea
                        ),
                      ),
                      SizedBox(width: 20), // Espacio en blanco
                      Expanded(
                        // Columna derecha en blanco
                        child: Container(),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            SizedBox(height: 20), // Espacio entre la fila de textos y el Card

            Card(
              elevation: 5, // Elevación del Card
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15), // Bordes redondeados
              ),
              margin: EdgeInsets.all(16),
              color: Color.fromARGB(
                  255, 227, 225, 207), // Margen exterior del Card
              child: ListTile(
                leading: CircleAvatar(
                  // Icono circular en el lado izquierdo
                  backgroundColor:
                      Color.fromARGB(255, 239, 180, 180), // Color del círculo
                  child: Icon(
                    Icons.airplanemode_active_rounded,
                    color: const Color.fromARGB(
                        255, 234, 90, 90), // Color del icono dentro del círculo
                  ),
                ),
                title: Row(
                  children: [
                    Text('Hawaii', style: TextStyle(fontSize: 16)),
                    Icon(Icons.arrow_forward_rounded),
                    Text('Sevilla', style: TextStyle(fontSize: 16)),
                  ],
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text('28 Oct, 2018', style: TextStyle(fontSize: 16)),
                        Icon(
                          Icons.remove_rounded,
                          size: 16,
                        ),
                        Text('11:00AM', style: TextStyle(fontSize: 16)),
                      ],
                    ),
                    Text('Emirates Airways', style: TextStyle(fontSize: 16)),
                  ],
                ),
                trailing: Icon(Icons
                    .more_vert), // Icono de tres puntos en el lado superior izquierdo
              ),
            ),

            Card(
              elevation: 5, // Elevación del Card
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15), // Bordes redondeados
              ),
              margin: EdgeInsets.all(16),
              color: Color.fromARGB(
                  255, 227, 225, 207), // Margen exterior del Card
              child: ListTile(
                leading: CircleAvatar(
                  // Icono circular en el lado izquierdo
                  backgroundColor:
                      Color.fromARGB(255, 239, 180, 180), // Color del círculo
                  child: Icon(
                    Icons.bus_alert_outlined,
                    color: const Color.fromARGB(
                        255, 234, 90, 90), // Color del icono dentro del círculo
                  ),
                ),
                title: Row(
                  children: [
                    Text('Sevilla', style: TextStyle(fontSize: 16)),
                    Icon(Icons.arrow_forward_rounded),
                    Text('Monaco', style: TextStyle(fontSize: 16)),
                  ],
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text('28 Oct, 2018', style: TextStyle(fontSize: 16)),
                        Icon(
                          Icons.remove_rounded,
                          size: 16,
                        ),
                        Text('11:00AM', style: TextStyle(fontSize: 16)),
                      ],
                    ),
                    Text('Emirates Airways', style: TextStyle(fontSize: 16)),
                  ],
                ),
                trailing: Icon(Icons
                    .more_vert), // Icono de tres puntos en el lado superior izquierdo
              ),
            ),

            Card(
              elevation: 5, // Elevación del Card
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15), // Bordes redondeados
              ),
              margin: EdgeInsets.all(16),
              color: Color.fromARGB(
                  255, 227, 225, 207), // Margen exterior del Card
              child: ListTile(
                leading: CircleAvatar(
                  // Icono circular en el lado izquierdo
                  backgroundColor:
                      Color.fromARGB(255, 239, 180, 180), // Color del círculo
                  child: Icon(
                    Icons.airplanemode_active_rounded,
                    color: const Color.fromARGB(
                        255, 234, 90, 90), // Color del icono dentro del círculo
                  ),
                ),
                title: Row(
                  children: [
                    Text('Atlanta', style: TextStyle(fontSize: 16)),
                    Icon(Icons.arrow_forward_rounded),
                    Text('Marrakech', style: TextStyle(fontSize: 16)),
                  ],
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text('28 Oct, 2018', style: TextStyle(fontSize: 16)),
                        Icon(
                          Icons.remove_rounded,
                          size: 16,
                        ),
                        Text('11:00AM', style: TextStyle(fontSize: 16)),
                      ],
                    ),
                    Text('Emirates Airways', style: TextStyle(fontSize: 16)),
                  ],
                ),
                trailing: Icon(Icons
                    .more_vert), // Icono de tres puntos en el lado superior izquierdo
              ),
            ),

            Card(
              elevation: 5, // Elevación del Card
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15), // Bordes redondeados
              ),
              margin: EdgeInsets.all(16),
              color: Color.fromARGB(
                  255, 227, 225, 207), // Margen exterior del Card
              child: ListTile(
                leading: CircleAvatar(
                  // Icono circular en el lado izquierdo
                  backgroundColor:
                      Color.fromARGB(255, 239, 180, 180), // Color del círculo
                  child: Icon(
                    Icons.airplanemode_active_rounded,
                    color: const Color.fromARGB(
                        255, 234, 90, 90), // Color del icono dentro del círculo
                  ),
                ),
                title: Row(
                  children: [
                    Text('Geneva', style: TextStyle(fontSize: 16)),
                    Icon(Icons.arrow_forward_rounded),
                    Text('Mexico city', style: TextStyle(fontSize: 16)),
                  ],
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text('28 Oct, 2018', style: TextStyle(fontSize: 16)),
                        Icon(
                          Icons.remove_rounded,
                          size: 16,
                        ),
                        Text('11:00AM', style: TextStyle(fontSize: 16)),
                      ],
                    ),
                    Text('Emirates Airways', style: TextStyle(fontSize: 16)),
                  ],
                ),
                trailing: Icon(Icons
                    .more_vert), // Icono de tres puntos en el lado superior izquierdo
              ),
            ),

            Card(
              elevation: 5, // Elevación del Card
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15), // Bordes redondeados
              ),
              margin: EdgeInsets.all(16),
              color: Color.fromARGB(
                  255, 227, 225, 207), // Margen exterior del Card
              child: ListTile(
                leading: CircleAvatar(
                  // Icono circular en el lado izquierdo
                  backgroundColor:
                      Color.fromARGB(255, 239, 180, 180), // Color del círculo
                  child: Icon(
                    Icons.directions_boat_filled,
                    color: const Color.fromARGB(
                        255, 234, 90, 90), // Color del icono dentro del círculo
                  ),
                ),
                title: Row(
                  children: [
                    Text('Reykjavik', style: TextStyle(fontSize: 16)),
                    Icon(Icons.arrow_forward_rounded),
                    Text('Sevilla', style: TextStyle(fontSize: 16)),
                  ],
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text('28 Oct, 2018', style: TextStyle(fontSize: 16)),
                        Icon(
                          Icons.remove_rounded,
                          size: 16,
                        ),
                        Text('11:00AM', style: TextStyle(fontSize: 16)),
                      ],
                    ),
                    Text('Emirates Airways', style: TextStyle(fontSize: 16)),
                  ],
                ),
                trailing: Icon(Icons
                    .more_vert), // Icono de tres puntos en el lado superior izquierdo
              ),
            ),

            Card(
              elevation: 5, // Elevación del Card
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15), // Bordes redondeados
              ),
              margin: EdgeInsets.all(16),
              color: Color.fromARGB(
                  255, 227, 225, 207), // Margen exterior del Card
              child: ListTile(
                leading: CircleAvatar(
                  // Icono circular en el lado izquierdo
                  backgroundColor:
                      Color.fromARGB(255, 239, 180, 180), // Color del círculo
                  child: Icon(
                    Icons.airplanemode_active_rounded,
                    color: const Color.fromARGB(
                        255, 234, 90, 90), // Color del icono dentro del círculo
                  ),
                ),
                title: Row(
                  children: [
                    Text('Hawaii', style: TextStyle(fontSize: 16)),
                    Icon(Icons.arrow_forward_rounded),
                    Text('Sevilla', style: TextStyle(fontSize: 16)),
                  ],
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text('28 Oct, 2018', style: TextStyle(fontSize: 16)),
                        Icon(
                          Icons.remove_rounded,
                          size: 16,
                        ),
                        Text('11:00AM', style: TextStyle(fontSize: 16)),
                      ],
                    ),
                    Text('Emirates Airways', style: TextStyle(fontSize: 16)),
                  ],
                ),
                trailing: Icon(Icons
                    .more_vert), // Icono de tres puntos en el lado superior izquierdo
              ),
            ),

            Card(
              elevation: 5, // Elevación del Card
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15), // Bordes redondeados
              ),
              margin: EdgeInsets.all(16),
              color: Color.fromARGB(
                  255, 227, 225, 207), // Margen exterior del Card
              child: ListTile(
                leading: CircleAvatar(
                  // Icono circular en el lado izquierdo
                  backgroundColor:
                      Color.fromARGB(255, 239, 180, 180), // Color del círculo
                  child: Icon(
                    Icons.airplanemode_active_rounded,
                    color: const Color.fromARGB(
                        255, 234, 90, 90), // Color del icono dentro del círculo
                  ),
                ),
                title: Row(
                  children: [
                    Text('Hawaii', style: TextStyle(fontSize: 16)),
                    Icon(Icons.arrow_forward_rounded),
                    Text('Sevilla', style: TextStyle(fontSize: 16)),
                  ],
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text('28 Oct, 2018', style: TextStyle(fontSize: 16)),
                        Icon(
                          Icons.remove_rounded,
                          size: 16,
                        ),
                        Text('11:00AM', style: TextStyle(fontSize: 16)),
                      ],
                    ),
                    Text('Emirates Airways', style: TextStyle(fontSize: 16)),
                  ],
                ),
                trailing: Icon(Icons
                    .more_vert), // Icono de tres puntos en el lado superior izquierdo
              ),
            ),

            Card(
              elevation: 5, // Elevación del Card
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15), // Bordes redondeados
              ),
              margin: EdgeInsets.all(16),
              color: Color.fromARGB(
                  255, 227, 225, 207), // Margen exterior del Card
              child: ListTile(
                leading: CircleAvatar(
                  // Icono circular en el lado izquierdo
                  backgroundColor:
                      Color.fromARGB(255, 239, 180, 180), // Color del círculo
                  child: Icon(
                    Icons.airplanemode_active_rounded,
                    color: const Color.fromARGB(
                        255, 234, 90, 90), // Color del icono dentro del círculo
                  ),
                ),
                title: Row(
                  children: [
                    Text('Hawaii', style: TextStyle(fontSize: 16)),
                    Icon(Icons.arrow_forward_rounded),
                    Text('Sevilla', style: TextStyle(fontSize: 16)),
                  ],
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text('28 Oct, 2018', style: TextStyle(fontSize: 16)),
                        Icon(
                          Icons.remove_rounded,
                          size: 16,
                        ),
                        Text('11:00AM', style: TextStyle(fontSize: 16)),
                      ],
                    ),
                    Text('Emirates Airways', style: TextStyle(fontSize: 16)),
                  ],
                ),
                trailing: Icon(Icons
                    .more_vert), // Icono de tres puntos en el lado superior izquierdo
              ),
            ),
          ],
        ),
      ),
    );
  }
}
