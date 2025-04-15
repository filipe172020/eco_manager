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
    const Inicio(),
    const Financa(),
    const Center(child: Text('Configurações')),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(24),
          topRight: Radius.circular(24),
          bottomLeft: Radius.circular(24),
          bottomRight: Radius.circular(24),
        ),
        child: NavigationBar(
          selectedIndex: _selectedIndex,
          onDestinationSelected: _onItemTapped,
          indicatorColor: const Color.fromARGB(221, 0, 163, 82),
          backgroundColor: const Color.fromARGB(255, 247, 247, 247),
          labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
          destinations: const [
            NavigationDestination(
              icon: Icon(Icons.home, color: Color.fromARGB(255, 27, 27, 27)),
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
              icon:
                  Icon(Icons.settings, color: Color.fromARGB(255, 27, 27, 27)),
              selectedIcon: Icon(Icons.settings, color: Colors.white),
              label: 'Configurações',
            )
          ],
        ),
      ),
    );
  }
}
