import './dog_fact.dart';

class Dog {
  final int id;
  final String name;
  final String imagePath;
  final List<DogFact> facts;

  Dog(this.id, this.name, this.imagePath, this.facts);

  static List<Dog> fetchAll() {
    return [
      Dog(1, 'Spitz', 'assets/images/1.jpg', [
        DogFact('Summary',
            'Spitz is a type of domestic dog characterized by long, thick, and often white fur, and pointed ears and muzzles.'),
        DogFact(
            'Characheristis', 'Spitzesike independence, suspcult to tanes.'),
      ]),
      Dog(2, 'Bulldog', 'assets/images/2.jpg', [
        DogFact('Summary', 'Bulldog'),
        DogFact('Characheristis', 'Bulldog'),
      ]),
      Dog(3, 'Dachshund', 'assets/images/3.jpg', [
        DogFact('Summary', 'Dachshund'),
        DogFact('Characheristis', 'Dachshund'),
      ]),
    ];
  }

  static Dog fetchByID(int dogID) {
    //fetch all locations ,iterate them,and when we find location with ID we need,return it
    List<Dog> dogs = Dog.fetchAll();
    for (var i = 0; i < dogs.length; i++) {
      if (dogs[i].id == dogID) {
        return dogs[i];
      }
    }
    return null;
  }
}
