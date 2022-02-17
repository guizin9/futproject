import 'package:flutter/material.dart';

class CirculoPosicao extends StatelessWidget {
  const CirculoPosicao({
    Key? key,
    Container? childrem,
    required this.corPosicao,
    required this.txtPosicao,
    required this.btnPosicao,
  }) : super(key: key);
  final Color corPosicao;
  final String txtPosicao;
  final void Function() btnPosicao;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: btnPosicao,
          child: Container(
            width: 45,
            height: 45,
            decoration: BoxDecoration(
              color: corPosicao,
              border: Border.all(
                width: 2.0,
              ),
              borderRadius: const BorderRadius.all(
                Radius.circular(30.0),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(2.0),
          child: Text(
            txtPosicao,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}
