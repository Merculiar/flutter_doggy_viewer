import 'package:flutter/material.dart';
import '../models/dog.dart';
import '../style.dart';

const DogTileHeight = 100.0;

class DogTile extends StatelessWidget {
  final Dog dog;
  final bool darkTheme;

  DogTile({this.dog, this.darkTheme = false});

  @override
  Widget build(BuildContext context) {
    final textColor = this.darkTheme ? TextColorLight : TextColorDark;

    return Container(
      padding: EdgeInsets.symmetric(horizontal: DefaultPaddingHorizontal),
      height: DogTileHeight,
      child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              dog.name.toUpperCase(),
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
              style:
                  Theme.of(context).textTheme.headline6.copyWith(color: textColor),
            ),
            Text(
              dog.userItinerarySummary.toUpperCase(),
              style: Theme.of(context).textTheme.subtitle2,
            ),
            Text(
              dog.tourPackageName.toUpperCase(),
              style: Theme.of(context)
                  .textTheme
                  .caption
                  .copyWith(color: textColor),
            ),
          ]),
    );
  }
}