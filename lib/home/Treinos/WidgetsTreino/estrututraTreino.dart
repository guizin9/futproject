import 'package:flutter/material.dart';

class EstruturaTreino extends StatelessWidget {
  const EstruturaTreino(
      {Key? key,
      required this.imgExercicio,
      required this.txtExercicio,
      required this.txtRepeticoes,
      required this.txtNumercao})
      : super(key: key);
  final String imgExercicio;
  final String txtExercicio;
  final String txtRepeticoes;
  final String txtNumercao;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Container(
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: SizedBox(
                      width: 100,
                      height: 100,
                      child: Image.asset(
                        imgExercicio,
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 30),
                        child: Text(txtNumercao),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Text(
                          txtExercicio,
                          style: const TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Text(
                          txtRepeticoes,
                          style: const TextStyle(
                              fontSize: 13, fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                ],
              ),
              color: Color(0x409900B4),
              width: 350,
              height: 150,
            ),
          ),
        )
      ],
    );
  }
}
