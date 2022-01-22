import 'package:example/pages/font/index.dart';
import 'package:example/pages/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tailwindcss/flutter_tailwindcss.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: TwColor.amber,
      ),
      initialRoute: '/font',
      routes: {
        '/': (content) => const MyHomePage(title: 'Flutter Demo Home Page'),
        '/font': (context) => const FontPage(),
      },
    );
  }
}
