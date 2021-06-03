//it is general widgets,which we can use in 2 or more screens

import 'package:flutter/material.dart';

class ImageBanner extends StatelessWidget {
  final String _imagePath;

  ImageBanner(this._imagePath);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints.expand(
        height: 220,
      ),
      decoration: BoxDecoration(color: Colors.grey),
      child: Image.asset(
        _imagePath,
        fit: BoxFit.cover,
      ),
    );
  }
}
