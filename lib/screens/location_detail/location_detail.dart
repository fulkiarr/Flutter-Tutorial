import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import "package:flutter_tutorial/screens/location_detail/text_widget.dart";
import "image_banner.dart";

class LocationDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      title: Text(
        'Image Show', style: TextStyle
        (
          fontWeight: FontWeight.bold,color: Colors.black
        ),
      ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ImageBanner("assets/image_01.png"),
            TextSection(Colors.white, "Hello"),
            TextSection(Colors.white12, "World"),
            TextSection(Colors.white, "Fulki Arrafi"),
          ],
        ),
    );
  }
}