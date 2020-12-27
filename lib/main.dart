import 'dart:html';
import 'package:flutter/material.dart';
import 'mirun.dart';
import 'peony.dart';
import 'kita.dart';
import 'belconykiss.dart';
import 'deer.dart';
import 'plateaux.dart';
import 'chapayum.dart';
import 'amezon.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cafe in UBU',
      theme: ThemeData(
        // brightness: Brightness.dark,
        primaryColor: Colors.orange[200],
        accentColor: Colors.orangeAccent[200],
        fontFamily: 'kanit',
        cardColor: Colors.white,
      ),
      home: MyHomePage(title: 'Cafe in UBU'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    Widget header = Container(
        child: Stack(
      children: <Widget>[
        Container(
          alignment: Alignment.topCenter,
          child: Image.asset(
            '../images/head2.jpg',
            width: 1920,
            height: 400,
            fit: BoxFit.cover,
          ),
        ),
        Container(
          alignment: const Alignment(-0.95, -0.3),
          child: ListTile(
            title: Text('Food and Coffee',
                style: TextStyle(
                  fontSize: 50,
                  // color: Colors.orange[300],
                )),
            subtitle: Text(
              'in Ubonratchathanee University',
              style: TextStyle(
                fontSize: 25,
              ),
            ),
          ),
        )
      ],
    ));

    Widget MIRUN = Center(
      child: Card(
        child: InkWell(
          splashColor: Colors.blue.withAlpha(40),
          onTap: () {
            print('Card tapped.');
          },
          child: ElevatedButton(
            child: Container(
              color: Colors.white,
              width: 400,
              height: 400,
              child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
                Image.asset(
                  '../images/mirun.png',
                  width: 400,
                  height: 300,
                  fit: BoxFit.cover,
                ),
                const ListTile(
                  leading: Icon(Icons.free_breakfast),
                  title: Text('MIRUN CAFE'),
                  subtitle: Text('Open 09:00 AM - 16:30 PM'),
                ),
              ]),
            ),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MirunPage(),
                  ));
            },
          ),
        ),
      ),
    );

    Widget Peony = Center(
      child: Card(
        child: InkWell(
          splashColor: Colors.blue.withAlpha(40),
          onTap: () {
            print('Card tapped.');
          },
          child: ElevatedButton(
            child: Container(
              color: Colors.white,
              width: 400,
              height: 400,
              child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
                Image.asset(
                  '../images/peony.png',
                  width: 400,
                  height: 300,
                  fit: BoxFit.cover,
                ),
                const ListTile(
                  leading: Icon(Icons.free_breakfast),
                  title: Text('Peony'),
                  subtitle: Text('Open 08:00 AM - 17:00 PM'),
                ),
              ]),
            ),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PeonyPage(),
                  ));
            },
          ),
        ),
      ),
    );

    Widget Kita = Center(
      child: Card(
        child: InkWell(
          splashColor: Colors.blue.withAlpha(40),
          onTap: () {
            print('Card tapped.');
          },
          child: ElevatedButton(
            child: Container(
              color: Colors.white,
              width: 400,
              height: 400,
              child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
                Image.asset(
                  '../images/kita.png',
                  width: 400,
                  height: 300,
                  fit: BoxFit.cover,
                ),
                const ListTile(
                  leading: Icon(Icons.free_breakfast),
                  title: Text('Kita Tea Stand สาขา ม.อุบล'),
                  subtitle: Text('Open 09:00 AM - 17:00 PM'),
                ),
              ]),
            ),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => KitaPage(),
                  ));
            },
          ),
        ),
      ),
    );

    Widget Balconykiss = Center(
      child: Card(
        child: InkWell(
          splashColor: Colors.blue.withAlpha(40),
          onTap: () {
            print('Card tapped.');
          },
          child: ElevatedButton(
            child: Container(
              color: Colors.white,
              width: 400,
              height: 400,
              child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
                Image.asset(
                  '../images/Balconykiss.png',
                  width: 400,
                  height: 300,
                  fit: BoxFit.cover,
                ),
                const ListTile(
                  leading: Icon(Icons.free_breakfast),
                  title: Text('Balconykiss Coffee Ubu'),
                  subtitle: Text('Open 08:00 AM - 20:00 PM'),
                ),
              ]),
            ),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BalconykissPage(),
                  ));
            },
          ),
        ),
      ),
    );

    Widget Deer = Center(
      child: Card(
        child: InkWell(
          splashColor: Colors.blue.withAlpha(40),
          onTap: () {
            print('Card tapped.');
          },
          child: ElevatedButton(
            child: Container(
              color: Colors.white,
              width: 400,
              height: 400,
              child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
                Image.asset(
                  '../images/deer.png',
                  width: 400,
                  height: 300,
                  fit: BoxFit.cover,
                ),
                const ListTile(
                  leading: Icon(Icons.free_breakfast),
                  title: Text('Deer Cafe by คุณหมูนางฟ้า'),
                  subtitle: Text('Open 08:30 AM - 18:30 PM'),
                ),
              ]),
            ),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DeerPage(),
                  ));
            },
          ),
        ),
      ),
    );

    Widget Plateaux = Center(
      child: Card(
        child: InkWell(
          splashColor: Colors.blue.withAlpha(40),
          onTap: () {
            print('Card tapped.');
          },
          child: ElevatedButton(
            child: Container(
              color: Colors.white,
              width: 400,
              height: 400,
              child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
                Image.asset(
                  '../images/Plateaux.png',
                  width: 400,
                  height: 300,
                  fit: BoxFit.cover,
                ),
                const ListTile(
                  leading: Icon(Icons.free_breakfast),
                  title: Text('Plateaux cafe’'),
                  subtitle: Text('Open 09:30 AM - 17:00 PM'),
                ),
              ]),
            ),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PlateauxPage(),
                  ));
            },
          ),
        ),
      ),
    );

    Widget chapayom = Center(
      child: Card(
        child: InkWell(
          splashColor: Colors.blue.withAlpha(40),
          onTap: () {
            print('Card tapped.');
          },
          child: ElevatedButton(
            child: Container(
              color: Colors.white,
              width: 400,
              height: 400,
              child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
                Image.asset(
                  '../images/chapayom.jpg',
                  width: 400,
                  height: 300,
                  fit: BoxFit.cover,
                ),
                const ListTile(
                  leading: Icon(Icons.free_breakfast),
                  title: Text('Cafe Chapayom @UBUคอมพิวเตอร์และเครื่อข่าย'),
                  subtitle: Text('Open 08:00 AM - 19:30 PM'),
                ),
              ]),
            ),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ChapayumPage(),
                  ));
            },
          ),
        ),
      ),
    );

    Widget amezon = Center(
      child: Card(
        child: InkWell(
          splashColor: Colors.blue.withAlpha(40),
          onTap: () {
            print('Card tapped.');
          },
          child: ElevatedButton(
            child: Container(
              color: Colors.white,
              width: 400,
              height: 400,
              child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
                Image.asset(
                  '../images/amezon.jpg',
                  width: 400,
                  height: 300,
                  fit: BoxFit.cover,
                ),
                const ListTile(
                  leading: Icon(Icons.free_breakfast),
                  title: Text('Cafe AMEZON'),
                  subtitle: Text('Open 09:00 AM - 17:30 PM'),
                ),
              ]),
            ),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AmezonPage(),
                  ));
            },
          ),
        ),
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView(
        children: [
          header,
          Container(
              padding: const EdgeInsets.all(30),
              child: Column(
                children: [
                  Text(
                    'RECOMMEND',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      MIRUN,
                      Peony,
                      Kita,
                      Balconykiss,
                    ],
                  ),
                  Text(''),
                  Text(
                    'CAFE',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Deer,
                        Plateaux,
                        chapayom,
                        amezon,
                      ],
                    ),
                  ),
                  Text(''),
                ],
              ))
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 70,
          color: Colors.orange[200],
          child: Column(
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.house),
                onPressed: null,
              ),
              Text('HOME'),
            ],
          ),
        ),
      ),
    );
  }
}
