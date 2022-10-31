import '../credits_screen.dart';
import '../homepage.dart';
import '../start_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StartScreen(),
      routes: {
        HomePage.ROUTE_NAME: (context) => HomePage(),
        CreditsScreen.ROUTE_NAME: (context) => CreditsScreen(),
      },
    );
  }
}
