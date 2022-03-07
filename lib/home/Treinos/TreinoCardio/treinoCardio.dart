import 'package:flutter/material.dart';
import 'package:futproject/home/Treinos/WidgetsTreino/estrututraTreino.dart';

class CardioTreino extends StatelessWidget {
  const CardioTreino({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: const [
            EstruturaTreino(
                imgExercicio: 'assets/imagens/trote.gif',
                txtExercicio: 'Corrida',
                txtRepeticoes: '10 minutos',
                txtNumercao: 'Aquecimento'),
            EstruturaTreino(
                imgExercicio: 'assets/imagens/corda02.gif',
                txtExercicio: 'Pular Corda',
                txtRepeticoes: '1 minuto 4x',
                txtNumercao: 'Execício 1'),
            EstruturaTreino(
                imgExercicio: 'assets/imagens/burpee.gif',
                txtExercicio: 'Burpee',
                txtRepeticoes: '12 repetições 4x',
                txtNumercao: 'Exercício 2'),
            EstruturaTreino(
                imgExercicio: 'assets/imagens/salto.gif',
                txtExercicio: 'Agachamento com salto',
                txtRepeticoes: '20 repetições 5x',
                txtNumercao: 'Exercício 3'),
            EstruturaTreino(
                imgExercicio: 'assets/imagens/alpinista.gif',
                txtExercicio: 'Alpinista',
                txtRepeticoes: '1 minuto 3x',
                txtNumercao: 'Exercício 4'),
            EstruturaTreino(
                imgExercicio: 'assets/imagens/trote.gif',
                txtExercicio: 'Corrida',
                txtRepeticoes: '20 minutos',
                txtNumercao: 'Exercício 5')
          ],
        ),
      ),
    );
  }
}
