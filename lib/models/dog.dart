import './dog_fact.dart';

class Dog {
  final int id;
  final String name;
  final String imagePath;
  final String userItinerarySummary;
  final String tourPackageName;
  final List<DogFact> facts;

  Dog({
    this.id,
    this.name,
    this.imagePath,
    this.facts,
    this.userItinerarySummary,
    this.tourPackageName,
  });

   static List<Dog> fetchAll() {
    return [
      Dog(
          id: 1,
          name: 'Spitz',
          imagePath: 'assets/images/1.jpg',
          userItinerarySummary: 'Day 1: 4PM - 5:00PM',
          tourPackageName: 'Standard Package',
          facts: [
            DogFact('Summary',
                'Kiyomizu-dera, officially Otowa-san Kiyomizu-dera, is an independent Buddhist temple in eastern Kyoto. The temple is part of the Historic Monuments of Ancient Kyoto UNESCO World Heritage site.'),
            DogFact(
                'Architectural Style', 'Japanese Buddhist architecture.'),
          ]),
      Dog(
          id: 2,
          name: 'Bulldog',
          imagePath: 'assets/images/2.jpg',
          userItinerarySummary: 'Day 1: 9AM - 1:30PM',
          tourPackageName: 'Standard Package',
          facts: [
            DogFact('Summary',
                'Japan’s Mt. Fuji is an active volcano about 100 kilometers southwest of Tokyo. Commonly called “Fuji-san,” it’s the country’s tallest peak, at 3,776 meters. A pilgrimage site for centuries, it’s considered one of Japan’s 3 sacred mountains, and summit hikes remain a popular activity. Its iconic profile is the subject of numerous works of art, notably Edo Period prints by Hokusai and Hiroshige.'),
            DogFact('Did You Know',
                'There are three cities that surround Mount Fuji: Gotemba, Fujiyoshida and Fujinomiya.'),
          ]),
      Dog(
          id: 3,
          name: 'Deuchhaund',
          imagePath: 'assets/images/3.jpg',
          userItinerarySummary: 'Day 1: 2PM - 3:30PM',
          tourPackageName: 'Standard Package',
          facts: [
            DogFact('Summary',
                'While we could go on about the ethereal glow and seemingly endless heights of this bamboo grove on the outskirts of Kyoto, the sight\'s pleasures extend beyond the visual realm.'),
            DogFact('How to Get There',
                'Kyoto airport, with several terminals, is located 16 kilometres south of the city and is also known as Kyoto. Kyoto can also be reached by transport links from other regional airports.'),
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
