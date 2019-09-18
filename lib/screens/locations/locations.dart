import 'package:flutter/material.dart';
import 'package:flutter_tutorial/screens/location_detail/image_banner.dart';
import 'package:flutter_tutorial/screens/location_detail/text_widget.dart';
import '../../main.dart';
import '../../models/location.dart';

class Locations extends StatelessWidget {
  final locations = Location.fetchAll();
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Colors.black, //change your color here
          ),
          backgroundColor: Colors.white,
          title: Text('Locations'.toUpperCase(), style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold),
          ),
        ),
        body: ListView(
          children: locations.map((location) => Card(
               child: ListTile(
                 contentPadding: const EdgeInsets.fromLTRB(5, 2, 5, 2),
                 leading: Container(
       constraints: BoxConstraints.expand(
         width: 90.0,
       ),
         decoration: BoxDecoration(color: Colors.grey),
         child: Image.asset(location.imagePath, fit: BoxFit.cover),
    ),
                 title: Text(location.name.toUpperCase(), style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold)),
                 subtitle: Text(textSections(location), style: TextStyle(fontSize: 12.0),),
                 onTap: () => _onLocationTap(context,location.id),
                ),
          ),
        ).toList(),
      ),
    );
  }
    _onLocationTap(BuildContext context, int locationID) {
      Navigator.pushNamed(context, LocationDetailRoute, arguments: {'id' : locationID});
  
  }

  String textSections(Location location) {
     var data = location.facts.map((fact) => fact.text).toString();
     int number = data.length;
     String val = data.substring(1, number-1);
     val = val.substring(0, 100);
     val = val+"...Read More";
     return val;
  }
}