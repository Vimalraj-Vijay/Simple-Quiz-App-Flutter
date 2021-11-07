import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String _questions;

  Question(this._questions);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(15),
      child: Text(
        _questions,
        style: const TextStyle(
          fontSize: 18,
          color: Colors.black54,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
