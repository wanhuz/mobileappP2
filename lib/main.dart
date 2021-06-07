import 'package:flutter/material.dart';
import 'tile.dart';
import 'screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Internet of Things: Mai Home (Dev: Ahmad)',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.grey[300],
        primarySwatch: Colors.lightBlue,
      ),
      home: DefaultTabController(
              length: 3,
              child: Scaffold(
                appBar: AppBar(
                  bottom: TabBar(
                    tabs: [
                      Tab(icon: Text("All", style: TextStyle(color: Colors.white),)),
                      Tab(icon: Text("Ahmad", style: TextStyle(color: Colors.white),)),
                      Tab(icon: Text("Not Ahmad", style: TextStyle(color: Colors.white),)),
                  ],
                ),
                  title: Text("Internet of Things: Mai Home (Created by: Ahmad)", style: TextStyle(color: Colors.white),),
              ),
              body: TabBarView(
                children: [
                  Screen([
                    Tile("Ahmad's Aircond", "res/042-air-conditioner.png"),
                    Tile('Home\'s Washing Machine', 'res/046-washing-machine.png'),
                    Tile("Fatimah's Speaker", "res/016-speaker-1.png"),
                    Tile('Father Server', 'res/025-computer-1.png'),
                    Tile('Living Room TV', 'res/023-television.png'),
                    Tile("Ahmad's BMW F 900 XR", "res/001-scooter-1.png"),
                    Tile("Ahmad's Alarm Clock", "res/019-smartphone-1.png"),
                    Tile("Ahmad's FBI activity", "res/037-cctv.png"),
                    Tile('Family Car', 'res/047-smart-car.png'),
                    Tile('Family Front Gate', 'res/014-padlock.png'),
                    Tile("Ahmad's Private Router", "res/017-router.png")
                  ]),
                  Screen([
                    Tile("Ahmad's Aircond", "res/042-air-conditioner.png"),
                    Tile("Ahmad's BMW F 900 XR", "res/001-scooter-1.png"),
                    Tile("Ahmad's Alarm Clock", "res/019-smartphone-1.png"),
                    Tile("Ahmad's Hack.exe", "res/037-cctv.png"),
                    Tile("Ahmad's Private Router", "res/017-router.png")
                  ]),
                  Screen([
                    Tile('Home\'s Washing Machine', 'res/046-washing-machine.png'),
                    Tile("Fatimah's Speaker", "res/016-speaker-1.png"),
                    Tile('Father Server', 'res/025-computer-1.png'),
                    Tile('Living Room TV', 'res/023-television.png'),
                    Tile('Family Car', 'res/047-smart-car.png'),
                    Tile('Family Front Gate', 'res/014-padlock.png')
                  ]),
                ]
              ),
            )
      )
    );
  }
}


