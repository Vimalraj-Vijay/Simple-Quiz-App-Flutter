import 'package:flutter/material.dart';
import 'package:myflutter/quiz.dart';
import 'package:myflutter/result.dart';
import 'package:myflutter/splash.dart';

void main() => runApp(MyCoolApp());

class MyCoolApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyCoolAppStateFullWidget();
  }
}

/**
 * When You define a variable/Class/Method as Private
 * Just add _(underscore) infront of the variable/Class/Method
 *  Ex _question
 */
class _MyCoolAppStateFullWidget extends State<MyCoolApp> {

  /**
   * Set state method is used to re-run the build method
   */
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Splash(),
    );
  }
}
