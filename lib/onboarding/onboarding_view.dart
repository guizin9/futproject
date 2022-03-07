import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:futproject/onboarding/cadastro.dart';
import 'package:futproject/onboarding/login.dart';
import 'package:futproject/onboarding/posicao.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({Key? key}) : super(key: key);

  @override
  _OnboardingViewState createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  int current = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            carossa(context),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 167,
                  height: 52,
                  child: OutlinedButton(
                    // style: ButtonStyle(
                    //   backgroundColor: MaterialStateProperty.all(Colors.white),
                    // ),
                    style: OutlinedButton.styleFrom(
                      side: const BorderSide(
                        width: 3,
                      ),
                    ),
                    child: const Text("Entrar"),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Login(),
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                SizedBox(
                  width: 167,
                  height: 52,
                  child: ElevatedButton(
                    child: const Text("Cadastro"),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Cadastro(),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget carossa(BuildContext context) {
    List<String> list = [
      'assets/imagens/img_inicial.png',
      'assets/imagens/img_inicial2.jpg',
      'assets/imagens/marcelo.jpg',
      'assets/imagens/benzema.jpg',
    ];
    return Stack(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            autoPlay: true,
            viewportFraction: 1,
            height: 690,
            onPageChanged: (index, reason) {
              setState(() {
                current = index;
              });
            },
          ),
          items: list
              .map(
                (item) => Container(
                  margin: EdgeInsets.zero,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(item),
                    ),
                  ),
                ),
              )
              .toList(),
        ),
        Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 570),
              child: Text(
                'Seja um campeão',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ...list.asMap().keys.map(
                      (index) => Padding(
                        padding: const EdgeInsets.only(top: 30, right: 8),
                        child: Container(
                          width: 25,
                          height: 25,
                          decoration: BoxDecoration(
                            color: current == index
                                ? const Color.fromARGB(129, 255, 255, 255)
                                : Colors.transparent,
                            border: Border.all(
                                width: 2.0,
                                color:
                                    const Color.fromARGB(255, 255, 255, 255)),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(30.0),
                            ),
                          ),
                        ),
                      ),
                    ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
