import 'package:flutter/material.dart';
import 'package:futproject/home/Treinos/TreinoFisico/treinoFIsico.dart';
import 'package:futproject/home/Treinos/TreinoFisico/treinoFisico02.dart';
import '../WidgetsTreino/widgetsTreino.dart';

class DiasDeTreino extends StatefulWidget {
  const DiasDeTreino({Key? key}) : super(key: key);

  @override
  _DiasDeTreinoState createState() => _DiasDeTreinoState();
}

class _DiasDeTreinoState extends State<DiasDeTreino> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Treino Físico"),
      ),
      body: Column(
        children: [
          Stack(
            children: [
              const DiasTreinoWidget(),
              Padding(
                padding: const EdgeInsets.only(top: 60, left: 65),
                child: CirculoTreino(
                  btnCirculoTreino: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const FisicoTreino(),
                        ));
                  },
                  numeracaoTreino: const Text('1'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 60, left: 135),
                child: CirculoTreino(
                  btnCirculoTreino: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const FisicoTreino02(),
                        ));
                  },
                  numeracaoTreino: const Text('2'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 60, left: 205),
                child: CirculoTreino(
                  btnCirculoTreino: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const FisicoTreino(),
                        ));
                  },
                  numeracaoTreino: const Text('3'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 60, left: 275),
                child: CirculoTreino(
                  btnCirculoTreino: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const FisicoTreino02(),
                        ));
                  },
                  numeracaoTreino: const Text('4'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 120, left: 100),
                child: CirculoTreino(
                  btnCirculoTreino: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const FisicoTreino(),
                        ));
                  },
                  numeracaoTreino: const Text('5'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 120, left: 170),
                child: CirculoTreino(
                  btnCirculoTreino: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const FisicoTreino02(),
                        ));
                  },
                  numeracaoTreino: const Text('6'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 120, left: 240),
                child: CirculoTreino(
                  btnCirculoTreino: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const FisicoTreino(),
                        ));
                  },
                  numeracaoTreino: const Text('7'),
                ),
              ),
              Center(
                  child: Padding(
                padding: const EdgeInsets.only(top: 250),
                child: SizedBox(
                  child: Image.asset(
                    'assets/imagens/treino.png',
                  ),
                ),
              ))
            ],
          ),
        ],
      ),
    );
  }
}
