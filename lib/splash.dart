import 'package:flutter/material.dart';
import 'package:myflutter/myhome.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    //_navigatetoHomePage();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 250,
              width: 250,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'images/test.jpg',
                  ),
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                top: 15,
              ),
              child: const Text(
                'Welcome to Quiz Mania ',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _navigatetoHomePage() async {
    await Future.delayed(
        const Duration(
          milliseconds: 2500,
        ),
        () {});

    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => Myhome()));
  }
}
