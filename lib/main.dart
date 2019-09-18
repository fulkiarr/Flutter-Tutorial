import 'package:flutter/material.dart';
import 'package:flutter_tutorial/screens/location_detail/location_detail.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LocationDetail(),
    );
  }
}
