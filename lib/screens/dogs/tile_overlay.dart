import 'package:flutter/material.dart';
import 'package:flutter_doggy_viewer/widgets/dog_tile.dart';
import '../../models/dog.dart';

class TileOverlay extends StatelessWidget {
  final Dog dog;

  TileOverlay(this.dog);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          padding: EdgeInsets.symmetric(vertical: 5.0),
          decoration: BoxDecoration(color: Colors.black.withOpacity(0.5)),
          child: DogTile(dog: dog, darkTheme: true),
        )
      ],
    );
  }
}
