import "package:flutter/material.dart";

class TextSection extends StatelessWidget {
  final Color _color;
  final String _text;
  TextSection(this._color, this._text);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: _color,
          border: Border(
            bottom: BorderSide(color: Colors.black26, width: 2.0
          ),
        ), 
      ),
     child: Padding(
       padding: EdgeInsets.all(20.00),
        child: Text( _text, style: TextStyle(fontFamily: 'SF-Pro-Text-Bold', fontSize: 20.00,color: Colors.black87),
      ),
     ),
    );
  }
}