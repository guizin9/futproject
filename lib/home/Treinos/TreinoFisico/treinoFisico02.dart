import 'package:flutter/material.dart';

import '../WidgetsTreino/estrututraTreino.dart';

class FisicoTreino02 extends StatefulWidget {
  const FisicoTreino02({Key? key}) : super(key: key);

  @override
  _FisicoTreino02State createState() => _FisicoTreino02State();
}

class _FisicoTreino02State extends State<FisicoTreino02> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: const [
            EstruturaTreino(
              imgExercicio: 'assets/imagens/supino.webp',
              txtNumercao: 'Execício 1',
              txtExercicio: 'Supino Inclinado',
              txtRepeticoes: '12 repetições 4x',
            ),
            EstruturaTreino(
                imgExercicio: 'assets/imagens/roscaScott.gif',
                txtExercicio: 'Rosca Scott',
                txtRepeticoes: '12 repetições 4x',
                txtNumercao: 'Exercício 2'),
            EstruturaTreino(
                imgExercicio: 'assets/imagens/pullover.webp',
                txtExercicio: 'Pull Over',
                txtRepeticoes: '12 repetições 3x',
                txtNumercao: 'Exercício 3'),
            EstruturaTreino(
                imgExercicio: 'assets/imagens/rosca.webp',
                txtExercicio: 'Rosca Concentrada',
                txtRepeticoes: '12 repetições 4x',
                txtNumercao: 'Exercício 4'),
            EstruturaTreino(
                imgExercicio:
                    'assets/imagens/abdominal-obliquo-lateral-no-solo.webp',
                txtExercicio: 'Abdominal Oblíquo',
                txtRepeticoes: '15 repetições 4x',
                txtNumercao: 'Exercício 5'),
            EstruturaTreino(
                imgExercicio: 'assets/imagens/abdominal.webp',
                txtExercicio: 'Abdominal',
                txtRepeticoes: '20 repetições 4x',
                txtNumercao: 'Exercício 6'),
            EstruturaTreino(
                imgExercicio: 'assets/imagens/prancha.gif',
                txtExercicio: 'Prancha',
                txtRepeticoes: '12 repetições 3x',
                txtNumercao: 'Execício 7')
          ],
        ),
      ),
    );
  }
}
