import "package:flutter/material.dart";

class Tile extends StatefulWidget{
  final String text;
  final String img;
  const Tile(this.text,this.img);

@override
  _TileWidgetState createState() => _TileWidgetState();

}

class _TileWidgetState extends State<Tile> {
  bool enabled = false;
  Text switchBtn = Text("   Off", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),);
  Image switchIco = Image(image: AssetImage("res/off.png"), height: 20,);

  void toggleSwitch() {
    setState(() {
      if (enabled) {
        switchBtn = Text("   Off", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),);
        switchIco = Image(image: AssetImage("res/off.png"), height: 20,);
        enabled = false;
      }
      else {
        switchBtn = Text("   On", style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold),);
        switchIco = Image(image: AssetImage("res/on.png"), height: 20,);
        enabled = true;
      }
    });
  }

  

  @override
  Widget build(BuildContext context) {
      return Card(
              child: 
                Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    ListTile(
                      leading: SizedBox(height: 50, width: 50, child: 
                                IconButton(
                                  icon: Image(image: AssetImage(widget.img)),
                                  onPressed: toggleSwitch,
                                ),),
                      title:   TextButton( child: 
                                Align( alignment: Alignment.centerLeft, child: 
                                  Text(widget.text, style: TextStyle(color: Colors.black87)), ), onPressed: toggleSwitch,),
                      subtitle: Align( alignment: Alignment.centerLeft, child: Row(children: [switchIco, switchBtn],)),
                    ),
                ],)

      );
  }
  
}