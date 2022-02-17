import 'package:flutter/material.dart';

import '../home/home.atacante.dart';
import 'Widgets/containerPosicao.dart';

class Posicao extends StatefulWidget {
  const Posicao({Key? key}) : super(key: key);

  @override
  _PosicaoState createState() => _PosicaoState();
}

class _PosicaoState extends State<Posicao> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FutProject'),
      ),
      body: Stack(
        children: [
          Image.asset(
            'assets/imagens/campdefutebol.png',
            fit: BoxFit.fill,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
          ),
          Container(
            child: Center(
              child: Column(
                children: <Widget>[
                  Card(
                    color: Color.fromARGB(188, 255, 255, 255),
                    child: Row(
                      children: [
                        SizedBox(
                          child: Image.asset('assets/imagens/icone.png'),
                          width: 40,
                        ),
                        SizedBox(
                          width: 300,
                          height: 90,
                          child: Padding(
                            padding: const EdgeInsets.all(33.0),
                            child: Column(
                              children: <Widget>[
                                Container(
                                  child: const Text(
                                    'Escolha sua posição',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 125,
            right: 174,
            child: CirculoPosicao(
              corPosicao: Color.fromARGB(255, 255, 17, 0),
              txtPosicao: "ATA",
              btnPosicao: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomeAtacante(),
                  ),
                );
              },
            ),
          ),
          Positioned(
            top: 190,
            right: 280,
            child: CirculoPosicao(
              corPosicao: Color.fromARGB(255, 255, 17, 0),
              txtPosicao: "PD",
              btnPosicao: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomeAtacante(),
                    ));
              },
            ),
          ),
          Positioned(
            top: 190,
            left: 280,
            child: CirculoPosicao(
              corPosicao: Color.fromARGB(255, 255, 17, 0),
              txtPosicao: "PE",
              btnPosicao: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomeAtacante(),
                    ));
              },
            ),
          ),
          Positioned(
            top: 300,
            left: 250,
            child: CirculoPosicao(
              corPosicao: Color.fromARGB(255, 255, 230, 0),
              txtPosicao: "MD",
              btnPosicao: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomeAtacante(),
                    ));
              },
            ),
          ),
          Positioned(
            top: 370,
            left: 174,
            child: CirculoPosicao(
              corPosicao: Color.fromARGB(255, 255, 230, 0),
              txtPosicao: "VOL",
              btnPosicao: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomeAtacante(),
                    ));
              },
            ),
          ),
          Positioned(
            top: 300,
            right: 250,
            child: CirculoPosicao(
              corPosicao: Color.fromARGB(255, 255, 230, 0),
              txtPosicao: "ME",
              btnPosicao: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomeAtacante(),
                    ));
              },
            ),
          ),
          Positioned(
            top: 500,
            right: 230,
            child: CirculoPosicao(
              corPosicao: Color.fromARGB(255, 0, 255, 8),
              txtPosicao: "ZAG",
              btnPosicao: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomeAtacante(),
                    ));
              },
            ),
          ),
          Positioned(
            top: 500,
            left: 230,
            child: CirculoPosicao(
              corPosicao: Color.fromARGB(255, 0, 255, 8),
              txtPosicao: "ZAG",
              btnPosicao: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomeAtacante(),
                    ));
              },
            ),
          ),
          Positioned(
            top: 430,
            left: 50,
            child: CirculoPosicao(
              corPosicao: Color.fromARGB(255, 0, 255, 8),
              txtPosicao: "LE",
              btnPosicao: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomeAtacante(),
                    ));
              },
            ),
          ),
          Positioned(
            top: 430,
            right: 50,
            child: CirculoPosicao(
              corPosicao: Color.fromARGB(255, 0, 255, 8),
              txtPosicao: "LD",
              btnPosicao: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomeAtacante(),
                    ));
              },
            ),
          ),
          Positioned(
            top: 570,
            right: 174,
            child: CirculoPosicao(
              corPosicao: Color.fromARGB(255, 0, 140, 255),
              txtPosicao: "GL",
              btnPosicao: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomeAtacante(),
                    ));
              },
            ),
          ),
        ],
      ),
    );
  }
}
