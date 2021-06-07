import "package:flutter/material.dart";
import "tile.dart";

class Screen extends StatelessWidget{
  final List<Tile> tileList;
  const Screen(this.tileList);


  @override
  Widget build(BuildContext context) {
    return Center(
      child:       
        GridView.count(
          childAspectRatio: (120 / 70),
          padding: const EdgeInsets.all(20),
          crossAxisCount: 2,
          crossAxisSpacing: 5,
          mainAxisSpacing: 5,
          children: <Widget> [
            for (var tile in tileList) tile
          ]
        )
      );
  }
  
}