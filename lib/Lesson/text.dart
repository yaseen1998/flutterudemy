import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  final String _text;
  final TextStyle _style;
  const MyText( this._text, this._style, {super.key});
  @override
  Widget build(BuildContext context) {
    return Text(
      _text,
      style: _style,
    );
  }
}
