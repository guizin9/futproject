import 'package:flutter/material.dart';

class PsicoTreino extends StatefulWidget {
  const PsicoTreino({Key? key}) : super(key: key);

  @override
  State<PsicoTreino> createState() => _PsicoTreinoState();
}

class _PsicoTreinoState extends State<PsicoTreino> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: 400,
                height: 170,
                color: const Color.fromARGB(255, 71, 0, 104),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: const [
                      Text(
                        'Saiba lidar com frustrações e expectativas ',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Sonhe com os “pés no chão” ',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Seja resiliente” ',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Encare as derrotas” ',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: 400,
                height: 320,
                color: const Color.fromARGB(255, 106, 0, 124),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: const [
                      Text(
                        'Trabalhe sua mente para acompanhar seu corpo',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Trabalhar a mente para que ela consiga estar em consonância com o que o corpo é capaz de realizar é um passo fundamental para o atleta que deseja obter os melhores resultados.',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'A Visualização, também conhecida como ensaio mental e prática mental, envolve a criação ou a recriação de uma experiência em sua mente.',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Assim como é o trabalho de condicionamento físico, é possível trabalhar o condicionamento mental.',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Image.asset('assets/imagens/arnold02.jpeg')
            ],
          ),
        ));
  }
}
