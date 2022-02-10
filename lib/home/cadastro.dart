import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text('FutProject'),
      ),
      body: Stack(
        children: [
          Image.asset(
            'assets/imagens/img_ney.jpeg',
            fit: BoxFit.fill,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
          ),
          login()
        ],
      ),
    );
  }

  Widget login() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 140),
      decoration: BoxDecoration(
        color: Colors.white60,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            children: [
              const Padding(
                padding: EdgeInsets.only(),
                child: Text(
                  '   Faça seu Cadastro',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                child: Image.asset('assets/imagens/icone.png'),
                width: 100,
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 14),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Insira seu nome',
                  hintStyle: TextStyle(fontWeight: FontWeight.bold)),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 14),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Insira seu e-mail',
                  hintStyle: TextStyle(fontWeight: FontWeight.bold)),
            ),
          ),
          SizedBox(
            width: 167,
            height: 52,
            child: ElevatedButton(
              child: const Text("Avançar"),
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
        ],
      ),
    );
  }
}
