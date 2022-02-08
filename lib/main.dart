import 'package:flutter/material.dart';
import 'package:futproject/home/home_view.dart';
import 'package:futproject/home/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData tema = ThemeData(fontFamily: 'Comfortaa');

    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: tema.copyWith(
          colorScheme: tema.colorScheme
              .copyWith(primary: Colors.black, secondary: Colors.white),
        ),
        home: const HomeView());
  }
}
