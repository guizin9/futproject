import 'package:flutter/material.dart';
import 'package:futproject/home/Treinos/TreinoCardio/diasCardio.dart';
import 'package:futproject/home/Treinos/TreinoPsico./treinoPsico.dart';
import 'package:futproject/home/WidgetsHome/cards.dart';

import '../Meta/calendario.dart';
import '../Treinos/TreinoFisico/diasFisico.dart';
import '../Treinos/TreinoFundamento/diasFundamento.dart';

class Pagina01 extends StatelessWidget {
  const Pagina01({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
            color: const Color.fromARGB(255, 38, 0, 73),
            width: 500,
            height: 200),
        Padding(
          padding: const EdgeInsets.only(left: 69, top: 105),
          child: Container(
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text("Meta Semanal",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Defina sua meta semanal para melhorar seu corpo.",
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const CalendarioMeta(),
                          ));
                    },
                    child: const Text("Defina uma meta"),
                  ),
                )
              ],
            ),
            width: 260,
            height: 175,
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 185, 241, 255),
              borderRadius: BorderRadius.all(
                Radius.circular(8.0),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 35, top: 350),
          child: Row(
            children: [
              Column(
                children: [
                  CardsHome(
                    inconeCard: 'assets/imagens/treino.png',
                    txtCard: 'Treino',
                    btnCards: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const DiasDeTreino(),
                          ));
                    },
                  ),
                  CardsHome(
                    inconeCard: 'assets/imagens/cerebro.png',
                    txtCard: 'Psicológico',
                    btnCards: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const PsicoTreino(),
                          ));
                    },
                  ),
                ],
              ),
              Column(
                children: [
                  CardsHome(
                    inconeCard: 'assets/imagens/inconeCardio.png',
                    txtCard: 'Cardio',
                    btnCards: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const DiasTreinoCardio(),
                          ));
                    },
                  ),
                  CardsHome(
                    inconeCard: 'assets/imagens/fut02-removebg-preview.png',
                    txtCard: 'Fundamento',
                    btnCards: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                const DiasDeTreinoFundamento(),
                          ));
                    },
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
