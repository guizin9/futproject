import 'package:flutter/material.dart';
import 'package:futproject/home/Treinos/TreinoFundamento/treinoFundamento.dart';

import '../WidgetsTreino/widgetsTreino.dart';

class DiasDeTreinoFundamento extends StatelessWidget {
  const DiasDeTreinoFundamento({Key? key}) : super(key: key);

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
                          builder: (context) => const FundamentoTreino(),
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
                          builder: (context) => const FundamentoTreino(),
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
                          builder: (context) => const FundamentoTreino(),
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
                          builder: (context) => const FundamentoTreino(),
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
                          builder: (context) => const FundamentoTreino(),
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
                          builder: (context) => const FundamentoTreino(),
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
                          builder: (context) => const FundamentoTreino(),
                        ));
                  },
                  numeracaoTreino: const Text('7'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 200),
                child: Image.asset('assets/imagens/fut02-removebg-preview.png'),
              )
            ],
          ),
        ],
      ),
    );
  }
}
