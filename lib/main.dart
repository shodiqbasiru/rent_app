import 'package:flutter/material.dart';
import 'package:rent_app/widget/welcome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Rent App',
        theme: ThemeData(),
        debugShowCheckedModeBanner: false,
        home: const WelcomePage());
  }
}
