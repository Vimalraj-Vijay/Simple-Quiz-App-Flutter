import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectedHandler;
  final String answers;

  Answer(this.selectedHandler, this.answers);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(
        left: 20,
        right: 20,
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.deepPurpleAccent,
          onPrimary: Colors.white,
        ),
        child: Text(answers),
        onPressed: selectedHandler,
      ),
    );
  }
}
