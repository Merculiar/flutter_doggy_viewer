import 'package:flutter/material.dart';
import '../../widgets/image_banner.dart';
import 'package:flutter_doggy_viewer/screens/dogs_detail/text_section.dart';
import '../../models/dog.dart';

class DogDetail extends StatelessWidget {
  final int _dogID;

  DogDetail(this._dogID);
  @override
  Widget build(BuildContext context) {
    final dog = Dog.fetchByID(_dogID);

    return Scaffold(
        appBar: AppBar(
          title: Text(dog.name),
        ),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ImageBanner(dog.imagePath),
            ]..addAll(textSections(dog))));
  }

  List<Widget> textSections(Dog dog) {
    return dog.facts.map((fact) => TextSection(fact.title, fact.text)).toList();
  }
}
