import 'package:flutter/material.dart';
import '../inicio/inicio.dart';
import '../financas/financa.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    Inicio(),
    Financa(),
    Center(child: Text('Configurações')),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Eco Manager', style: TextStyle(fontWeight: FontWeight.bold) )),
      body: _pages[_selectedIndex],
      bottomNavigationBar: Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(24),
                topRight: Radius.circular(24),
                bottomLeft: Radius.circular(24),
                bottomRight: Radius.circular(24),
              ),
              child: NavigationBar(
                selectedIndex: _selectedIndex,
                onDestinationSelected: _onItemTapped,
                indicatorColor: const Color.fromARGB(255, 61, 138, 63),
                backgroundColor: const Color.fromARGB(255, 240, 240, 240),
                labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
                destinations: const [
                  NavigationDestination(
                    icon: Icon(Icons.home,
                        color: Color.fromARGB(255, 27, 27, 27)),
                    selectedIcon: Icon(Icons.home, color: Colors.white),
                    label: 'Início',
                  ),
                  NavigationDestination(
                    icon: Icon(Icons.attach_money_outlined,
                        color: Color.fromARGB(255, 27, 27, 27)),
                    selectedIcon: Icon(Icons.attach_money, color: Colors.white),
                    label: 'Finanças',
                  ),
                  NavigationDestination(
                    icon: Icon(Icons.settings,
                        color: Color.fromARGB(255, 27, 27, 27)),
                    selectedIcon: Icon(Icons.settings, color: Colors.white),
                    label: 'Configurações',
                  )
                ],
              ),
            ),
          ),
    );
  }
}
