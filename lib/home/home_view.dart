import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset(
            "assets/imagens/img_inicial.png",
            width: double.infinity,
            fit: BoxFit.cover,
            height: 664,
          ),
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
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.white),
                  ),
                  child: Text("Entrar"),
                  onPressed: () {
                    print("object");
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
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
