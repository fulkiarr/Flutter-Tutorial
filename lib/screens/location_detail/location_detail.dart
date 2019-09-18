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
            TextSection("Pulau Lautan Dalam", "is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."),
          ],
        ),
    );
  }
}