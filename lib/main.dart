import 'package:flutter/material.dart';
import 'tile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Internet of Things: Mai Home',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.grey[300],
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(title: 'Internet of Things: Mai Home'),
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
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: GridView.count(
        childAspectRatio: (120 / 70),
        padding: const EdgeInsets.all(20),
        crossAxisCount: 2,
        crossAxisSpacing: 5,
        mainAxisSpacing: 5,
        children: <Widget> [
          Tile("Ahmad's Aircond", "res/042-air-conditioner.png"),
          Tile('Home\'s Washing Machine', 'res/046-washing-machine.png'),
          Tile("Fatimah's Speaker", "res/016-speaker-1.png"),
          Tile('Father Server', 'res/025-computer-1.png'),
          Tile('Living Room TV', 'res/023-television.png'),
        ]
    )
    );
  }
}
