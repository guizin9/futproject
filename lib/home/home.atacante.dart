import 'package:flutter/material.dart';
import 'package:futproject/home/WidgetsHome/pagina01.dart';
import 'package:futproject/home/homeOptions.dart';
import 'package:futproject/home/homeRelatorio.dart';

class HomeAtacante extends StatefulWidget {
  const HomeAtacante({Key? key}) : super(key: key);

  @override
  _HomeAtacanteState createState() => _HomeAtacanteState();
}

class _HomeAtacanteState extends State<HomeAtacante> {
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  int _selectedIndex = 0;
  List<Widget> pages = [Pagina01(), RelatorioPessoal(), HomeOptions()];
  PageController controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          controller: controller,
          itemCount: pages.length,
          onPageChanged: (index) {
            if (index != _selectedIndex) _onItemTapped(index);
          },
          itemBuilder: (itemBuilder, index) {
            return pages[index];
          }),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Color.fromARGB(255, 38, 0, 73),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.graphic_eq),
            label: 'Relatório',
            backgroundColor: Color.fromARGB(255, 106, 0, 124),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: '',
            backgroundColor: Color.fromARGB(255, 153, 0, 180),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color.fromARGB(255, 185, 241, 255),
        onTap: (index) {
          controller.animateToPage((index),
              duration: Duration(milliseconds: 300), curve: Curves.ease);
        },
        type: BottomNavigationBarType.shifting,
      ),
    );
  }
}
