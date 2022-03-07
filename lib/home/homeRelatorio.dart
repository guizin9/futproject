import 'package:d_chart/d_chart.dart';
import 'package:flutter/material.dart';

class RelatorioPessoal extends StatefulWidget {
  const RelatorioPessoal({Key? key}) : super(key: key);

  @override
  _RelatorioPessoalState createState() => _RelatorioPessoalState();
}

class _RelatorioPessoalState extends State<RelatorioPessoal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 140,
                  color: const Color.fromARGB(255, 106, 0, 124),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 150),
                    child: Image.asset(
                      'assets/imagens/icone.png',
                      width: 80,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 240),
                  child: Center(child: Text('futProject')),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Container(
                color: const Color.fromARGB(123, 153, 0, 180),
                width: 350,
                height: 250,
                child: Row(
                  children: [
                    const RotatedBox(quarterTurns: 3, child: Text('Quantity')),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          AspectRatio(
                            aspectRatio: 16 / 9,
                            child: DChartLine(
                              lineColor: (lineData, index, id) {
                                return id == 'Line 1'
                                    ? Colors.blue
                                    : Colors.amber;
                              },
                              data: const [
                                {
                                  'id': 'Line 1',
                                  'data': [
                                    {'domain': 1, 'measure': 3},
                                    {'domain': 2, 'measure': 3},
                                    {'domain': 3, 'measure': 4},
                                    {'domain': 4, 'measure': 6},
                                    {'domain': 5, 'measure': 0.3},
                                  ],
                                },
                                {
                                  'id': 'Line 2',
                                  'data': [
                                    {'domain': 1, 'measure': 4},
                                    {'domain': 2, 'measure': 5},
                                    {'domain': 3, 'measure': 2},
                                    {'domain': 4, 'measure': 1},
                                    {'domain': 5, 'measure': 2.5},
                                  ],
                                },
                              ],
                              includePoints: true,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Container(
                width: 400,
                height: 60,
                color: const Color.fromARGB(255, 106, 0, 124),
                child: const Center(
                  child: Text(
                    'Relatório de rendimento',
                    style: TextStyle(
                      fontSize: 20,
                      color: Color.fromARGB(255, 185, 241, 255),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
