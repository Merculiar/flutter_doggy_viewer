import 'package:flutter/material.dart';
import 'package:flutter_doggy_viewer/app.dart';
//import '../../app.dart';
import '../../models/dog.dart';
import '../../widgets/image_banner.dart';
import 'tile_overlay.dart';

class Dogs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final dogs = Dog.fetchAll();
    return Scaffold(
        appBar: AppBar(
          title: Text("Dogs"),
        ),
        body: ListView.builder(
          itemCount: dogs.length,
          itemBuilder: (context, index) => _itemBuilder(context, dogs[index]),
        ));
  }

  _onDogTap(BuildContext context, int dogID) {
    Navigator.pushNamed(context, DogDetailRoute, arguments: {"id": dogID});
  }

  _itemBuilder(BuildContext context, Dog dog) {
    return GestureDetector(
      onTap: () => _onDogTap(context, dog.id),
      child: Container(
        height: 245.0,
        child: Stack(
          children: [
            ImageBanner(imagePath: dog.imagePath, height : 245.0),
            TileOverlay(dog),
          ],
        ),
      ),
    );
  }
}
