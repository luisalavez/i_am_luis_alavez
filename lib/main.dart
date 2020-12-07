import 'package:flutter/material.dart';
import 'package:i_am_luis_alavez/views/layout_template.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: Theme.of(context).textTheme.apply(fontFamily: 'Open Sans'),
      ),
      title: 'Luis Alavez',
      home: LayoutTemplate(),
    );
  }
}
