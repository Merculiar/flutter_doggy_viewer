// app.dart

import 'package:flutter/material.dart';
import 'package:flutter_doggy_viewer/screens/dogs_detail/dogs_detail.dart';
import 'screens/dogs/dogs.dart';
import 'style.dart';

const DogsRoute = '/';
const DogDetailRoute = '/dogs_detail';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: _routes(),
      theme: ThemeData(
          appBarTheme:
              AppBarTheme(textTheme: TextTheme(headline6: AppBarTextStyle)),
          textTheme: TextTheme(
            headline6: TitleTextStyle,
            bodyText2: Body1TextStyle,
          )),
    );
  }

  RouteFactory _routes() {
    return (settings) {
      final Map<String, dynamic> arguments = settings.arguments;
      Widget screen;
      switch (settings.name) {
        case DogsRoute:
          screen = Dogs();
          break;
        case DogDetailRoute:
          screen = DogDetail(arguments['id']);
          break;
        default:
          return null;
      }
      return MaterialPageRoute(builder: (BuildContext context) => screen);
    };
  }
}
