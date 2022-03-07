import 'package:flutter/material.dart';
import 'package:futproject/home/Treinos/WidgetsTreino/estrututraTreino.dart';

class FundamentoTreino extends StatefulWidget {
  const FundamentoTreino({Key? key}) : super(key: key);

  @override
  _FundamentoTreinoState createState() => _FundamentoTreinoState();
}

class _FundamentoTreinoState extends State<FundamentoTreino> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: const [
            EstruturaTreino(
                imgExercicio: 'assets/imagens/cone.gif',
                txtExercicio: 'Driblando Cone',
                txtRepeticoes: '5 minutos 3x',
                txtNumercao: 'Treino 1/perna esquerda'),
            EstruturaTreino(
                imgExercicio: 'assets/imagens/cone.gif',
                txtExercicio: 'Driblando Cone ',
                txtRepeticoes: '5 minutos 3x',
                txtNumercao: 'Treino 2/perna direita'),
            EstruturaTreino(
                imgExercicio: 'assets/imagens/drible.webp',
                txtExercicio: 'Dribles criativos',
                txtRepeticoes: '10 minutos',
                txtNumercao: 'Imagine dribles que faria\n\n' 'em jogo e faça'),
            EstruturaTreino(
                imgExercicio: 'assets/imagens/embaixadinha.gif',
                txtExercicio: 'Embaixadinha',
                txtRepeticoes: '20 repetições 3x',
                txtNumercao: 'Treino 3'),
            EstruturaTreino(
                imgExercicio: 'assets/imagens/chute.gif',
                txtExercicio: 'Chute bola parada',
                txtRepeticoes: '5 minutos 2x',
                txtNumercao: 'Treino 4/ longa distância'),
            EstruturaTreino(
                imgExercicio: 'assets/imagens/cabecada.gif',
                txtExercicio: 'Cabeceio',
                txtRepeticoes: '10 repetições 5x',
                txtNumercao: 'Treino 5'),
            EstruturaTreino(
                imgExercicio: 'assets/imagens/passe.gif',
                txtExercicio: 'Passe perna esquerda',
                txtRepeticoes: '10 repetições 3x ',
                txtNumercao: 'Treino 6'),
            EstruturaTreino(
                imgExercicio: 'assets/imagens/passe.gif',
                txtExercicio: 'Passe perna direita',
                txtRepeticoes: '10 repetições 3x ',
                txtNumercao: 'Treino 7'),
          ],
        ),
      ),
    );
  }
}
