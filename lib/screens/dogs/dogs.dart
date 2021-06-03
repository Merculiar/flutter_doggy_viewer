import 'package:flutter/material.dart';
import 'package:flutter_doggy_viewer/app.dart';
//import '../../app.dart';
import '../../models/dog.dart';

class Dogs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final dogs = Dog.fetchAll();
    return Scaffold(
        appBar: AppBar(
          title: Text("Dogs"),
        ),
        body: ListView(
          children: dogs
              .map((dog) => GestureDetector(
                    child: Text(dog.name),
                    onTap: () => _onDogTap(context, dog.id),
                  ))
              .toList(),
        ));
  }

  _onDogTap(BuildContext context, int dogID) {
    Navigator.pushNamed(context, DogDetailRoute, arguments: {"id": dogID});
  }
}
