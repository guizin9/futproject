import 'package:flutter/material.dart';
import 'package:futproject/home/Treinos/WidgetsTreino/estrututraTreino.dart';

class FisicoTreino extends StatefulWidget {
  const FisicoTreino({Key? key}) : super(key: key);

  @override
  _FisicoTreinoState createState() => _FisicoTreinoState();
}

class _FisicoTreinoState extends State<FisicoTreino> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: const [
            EstruturaTreino(
              imgExercicio: 'assets/imagens/agachamento.webp',
              txtNumercao: 'Exercício 1',
              txtExercicio: 'Agachamento',
              txtRepeticoes: '12 repetições 4x',
            ),
            EstruturaTreino(
                imgExercicio: 'assets/imagens/extensora.gif',
                txtExercicio: 'Cadeira extensora',
                txtRepeticoes: '12 repetições 4x',
                txtNumercao: 'Exercício 2'),
            EstruturaTreino(
                imgExercicio: 'assets/imagens/afundo.gif',
                txtExercicio: 'Afundo',
                txtRepeticoes: '12 repetições 3x',
                txtNumercao: 'Exercício 3'),
            EstruturaTreino(
                imgExercicio: 'assets/imagens/terra.gif',
                txtExercicio: 'Levantamento Terra',
                txtRepeticoes: '12 repetições 4x',
                txtNumercao: 'Exercício 4'),
            EstruturaTreino(
                imgExercicio: 'assets/imagens/mesaFlexora.webp',
                txtExercicio: 'Mesa Flexora',
                txtRepeticoes: '15 repetições 4x',
                txtNumercao: 'Exercício 5'),
            EstruturaTreino(
                imgExercicio: 'assets/imagens/levantamentoDaPanturrilha.gif',
                txtExercicio: 'Panturrilha Em Pé',
                txtRepeticoes: '15 repetições 5x',
                txtNumercao: 'Exercício 6'),
            EstruturaTreino(
                imgExercicio: 'assets/imagens/abdominal.webp',
                txtExercicio: 'Abdominal',
                txtRepeticoes: '20 repetições 4x',
                txtNumercao: 'Exercício 7'),
            EstruturaTreino(
                imgExercicio: 'assets/imagens/prancha.gif',
                txtExercicio: 'Prancha',
                txtRepeticoes: '12 repetições 3x',
                txtNumercao: 'Execício 8')
          ],
        ),
      ),
    );
  }
}
