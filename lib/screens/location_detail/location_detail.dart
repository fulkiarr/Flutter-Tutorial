import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import "package:flutter_tutorial/screens/location_detail/text_widget.dart";
import "image_banner.dart";
import "../../models/location.dart";

class LocationDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final locations = Location.fetchAll();
    final location = locations.first;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(location.name.toUpperCase(), style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ImageBanner(location.imagePath),
          ]..addAll(textSections(location))),
    );
  }

  List<Widget> textSections(Location location) {
    return location.facts.map((fact) => TextSection(fact.title, fact.text)).toList();
  }
}