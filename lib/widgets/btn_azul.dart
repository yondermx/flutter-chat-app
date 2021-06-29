import 'package:flutter/material.dart';

class BotonAzul extends StatelessWidget {
  final String text;
  final Function onPres;

  const BotonAzul({this.text, this.onPres});

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style =
        ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));

    return ElevatedButton(
        style: style,
        onPressed: this.onPres,
        child: Container(
          width: double.infinity,
          child: Center(child: Text(text)),
        ));
  }
}
