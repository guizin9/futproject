import 'package:flutter/material.dart';

class DiasTreinoWidget extends StatelessWidget {
  const DiasTreinoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.topCenter,
          child: Padding(
            padding: const EdgeInsets.only(top: 40),
            child: Container(
              width: 340,
              height: 160,
              color: const Color(0x409900B4),
            ),
          ),
        ),
      ],
    );
  }
}

class CirculoTreino extends StatelessWidget {
  const CirculoTreino(
      {Key? key, required this.btnCirculoTreino, required this.numeracaoTreino})
      : super(key: key);
  final void Function() btnCirculoTreino;
  final Text numeracaoTreino;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: btnCirculoTreino,
          child: Container(
            width: 50,
            height: 50,
            alignment: Alignment.center,
            child: numeracaoTreino,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 185, 241, 255),
              border: Border.all(
                width: 2.0,
              ),
              borderRadius: const BorderRadius.all(
                Radius.circular(30.0),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
