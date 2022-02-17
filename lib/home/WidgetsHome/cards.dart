import 'package:flutter/material.dart';

class CardsHome extends StatelessWidget {
  const CardsHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(0.0),
              child: SizedBox(
                height: 150,
                width: 150,
                child: Card(
                  color: Color.fromARGB(255, 153, 0, 180),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 150,
                width: 150,
                child: Card(
                  color: Color.fromARGB(255, 153, 0, 180),
                ),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(0.0),
              child: SizedBox(
                height: 150,
                width: 150,
                child: Card(
                  color: Color.fromARGB(255, 153, 0, 180),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 150,
                width: 150,
                child: Card(
                  color: Color.fromARGB(255, 255, 254, 244),
                ),
              ),
            ),
          ],
        ),
        Container(
          height: 10,
        )
      ],
    );
  }
}
