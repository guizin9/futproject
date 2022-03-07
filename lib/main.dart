import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:futproject/onboarding/cadastro.dart';

import 'onboarding/onboarding_view.dart';

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
          colorScheme: tema.colorScheme.copyWith(
              primary: const Color.fromARGB(255, 71, 0, 104),
              secondary: Colors.white),
        ),
        home: const OnboardingView());
  }
}
