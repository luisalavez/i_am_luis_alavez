import 'package:flutter/material.dart';

class PictureOfMe extends StatelessWidget {
  const PictureOfMe({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(100.0),
      child: Image.asset(
        'me.png',
        fit: BoxFit.cover,
        width: 150.0,
        height: 150.0,
      ),
    );
  }
}
