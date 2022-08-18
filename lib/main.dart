import 'package:flutter/material.dart';
import 'package:plant_store/screens/home/home_screen.dart';
import 'package:splashscreen/splashscreen.dart';
import 'dart:ui' as ui;
import 'constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Plant Store',
      theme: ThemeData(
        scaffoldBackgroundColor: kBackgroundColor,
        primaryColor: kPrimaryColor,
        textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SplashScreen(
          seconds: 7,
          navigateAfterSeconds: const HomeScreen(),
          title: Text(
            'Plant Store!',
            style: TextStyle(
                fontSize: 40,
                foreground: Paint()
                  ..shader = ui.Gradient.linear(
                    const Offset(0, 20),
                    const Offset(150, 20),
                    <Color>[
                      Colors.red,
                      Colors.yellow,
                    ],
                  )
            ),
          ),



          image: Image.asset("images/logo.png"),
          loadingText: const Text('Loading...'),
          styleTextUnderTheLoader: const TextStyle(
            fontSize: 60,
            fontWeight: FontWeight.bold,
            color: kTextColor,
          ),
          photoSize: 200.0,
          gradientBackground: const LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            stops: [0.1, 0.4, 0.7, 0.9],
            colors: [
              Color(0xFF015602),
              Color(0xFF187A1A),
              Color(0xFF328534),
              Color(0xFF46A949),
            ],
          ),
          loaderColor: Colors.red
      ),
    );
  }
}
