import 'package:flutter/material.dart';
import 'package:futproject/onboarding/onboarding_view.dart';

class HomeOptions extends StatefulWidget {
  const HomeOptions({Key? key}) : super(key: key);

  @override
  State<HomeOptions> createState() => _HomeOptionsState();
}

class _HomeOptionsState extends State<HomeOptions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 150),
              child: Image.asset(
                'assets/imagens/iconeUsuario.png',
                width: 200,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 70),
            child: Column(
              children: [
                Container(
                  color: Color.fromARGB(113, 155, 39, 176),
                  height: 40,
                  width: 400,
                  child: Center(child: Text('Nome Usuário')),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 1),
                  child: Container(
                    color: Color.fromARGB(113, 155, 39, 176),
                    height: 40,
                    width: 400,
                    child: Center(child: Text('Sobrenome Usuário')),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 1),
                  child: Container(
                    color: Color.fromARGB(113, 155, 39, 176),
                    height: 40,
                    width: 400,
                    child: Center(child: Text('Posição')),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 70),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const OnboardingView(),
                          ));
                    },
                    child: const Padding(
                      padding: EdgeInsets.only(
                          top: 20, bottom: 20, left: 40, right: 40),
                      child: Text(
                        "Sair",
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
