import "dart:html";
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'main.dart';
import 'package:url_launcher/url_launcher.dart';

class KitaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            /*1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*2*/
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    'Kita Tea Stand สาขา ม.อุบล',
                    style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          /*3*/
          FavoriteWidget(),
        ],
      ),
    );

    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildButtonColumn(color, Icons.insert_photo, 'PHOTO'),
          _buildButtonColumn(color, Icons.mode_comment, 'REVIEW'),
          _buildButtonColumn(color, Icons.share, 'SHARE'),
        ],
      ),
    );

    Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      color: Colors.black12,
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'ถนน สถลมาร์ค ตำบล เมืองศรีไค อำเภอวารินชำราบ อุบลราชธานี 34190',
                  softWrap: true,
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                  '08:00 AM to 20:00 PM',
                  softWrap: true,
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
          ),
          IconButton(
            icon: Icon(Icons.location_on),
            color: Colors.orangeAccent[400],
            onPressed: () => launch(
                'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d962.9282336704476!2d104.9068668!3d15.119141899999997!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x311685af537b5603%3A0x5feda6ec90be1d7e!2zS2l0YSBUZWEgU3RhbmQg4Liq4Liy4LiC4LiyIOC4oS7guK3guLjguJrguKU!5e0!3m2!1sth!2sth!4v1609096507099!5m2!1sth!2sth'),
          ),
        ],
      ),
    );

    Widget Contact = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Call',
                  softWrap: true,
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                  'Cuisines',
                  softWrap: true,
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                  'Average Cost',
                  softWrap: true,
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                '088 224 9567',
                style: TextStyle(color: Colors.orange[500], fontSize: 20),
              ),
              Text(
                'Milk Tea',
                style: TextStyle(color: Colors.orange[500], fontSize: 20),
              ),
              Text(
                '50 Bath - 150 Bath',
                style: TextStyle(color: Colors.orange[500], fontSize: 20),
              ),
            ],
          )
        ],
      ),
    );

    Widget recomment1 = Container(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: Card(
          color: Colors.orange[50],
          child: InkWell(
            splashColor: Colors.orange[100],
            onTap: () {
              print('Card tapped.');
            },
            child: Container(
              margin: const EdgeInsets.all(15),
              child: Row(
                children: <Widget>[
                  Container(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset(
                        '../images/Kita.png',
                        width: 150,
                        height: 150,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '   Milk Tea',
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                          softWrap: true,
                        ),
                        Text(
                          '   50 Bath',
                          style: TextStyle(
                            fontSize: 25,
                          ),
                          softWrap: true,
                        ),
                      ],
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        '3.9',
                        style: TextStyle(
                            color: Colors.orange[500],
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                      Icon(Icons.bookmark)
                    ],
                  )
                ],
              ),
            ),
          ),
        ));

    Widget recomment2 = Container(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: Card(
          color: Colors.orange[50],
          child: InkWell(
            splashColor: Colors.orange[100],
            onTap: () {
              print('Card tapped.');
            },
            child: Container(
              margin: const EdgeInsets.all(15),
              child: Row(
                children: <Widget>[
                  Container(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset(
                        '../images/food/6.png',
                        width: 150,
                        height: 150,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '   Green Tae',
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                          softWrap: true,
                        ),
                        Text(
                          '   50 Bath',
                          style: TextStyle(
                            fontSize: 25,
                          ),
                          softWrap: true,
                        ),
                      ],
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        '4.1',
                        style: TextStyle(
                            color: Colors.orange[500],
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                      Icon(Icons.bookmark)
                    ],
                  )
                ],
              ),
            ),
          ),
        ));

    return Scaffold(
      appBar: AppBar(
        title: Text("Kita Tea Stand"),
      ),
      body: ListView(
        children: [
          Image.asset(
            '../images/Kita.png',
            width: 1920,
            height: 400,
            fit: BoxFit.cover,
          ),
          titleSection,
          buttonSection,
          textSection,
          Contact,
          Container(
            padding: const EdgeInsets.only(left: 32),
            child: Text(
              'Recomment',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          recomment1,
          recomment2,
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
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MyApp(),
                      ));
                },
              ),
              Text('HOME'),
            ],
          ),
        ),
      ),
    );
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: Colors.orangeAccent[400]),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: Colors.orangeAccent[400],
            ),
          ),
        ),
      ],
    );
  }
}

class FavoriteWidget extends StatefulWidget {
  @override
  _FavoriteWidgetState createState() => _FavoriteWidgetState();
}

class _FavoriteWidgetState extends State<FavoriteWidget> {
  bool _isFavorited = true;
  int _favoriteCount = 99;

  void _toggleFavorite() {
    setState(() {
      if (_isFavorited) {
        _favoriteCount -= 1;
        _isFavorited = false;
      } else {
        _favoriteCount += 1;
        _isFavorited = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: EdgeInsets.all(0),
          child: IconButton(
            padding: EdgeInsets.all(0),
            alignment: Alignment.centerRight,
            icon: (_isFavorited ? Icon(Icons.star) : Icon(Icons.star_border)),
            color: Colors.red[500],
            onPressed: _toggleFavorite,
          ),
        ),
        SizedBox(
          width: 18,
          child: Container(
            child: Text('$_favoriteCount'),
          ),
        ),
      ],
    );
  }
}
