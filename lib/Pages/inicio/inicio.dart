import 'dart:ui';
import 'package:flutter/material.dart';

String userName = 'Filipe';
String receita = '12456,17';
String gastos = '7654,89';
String cifrao = '\$';

class Inicio extends StatelessWidget {
  const Inicio({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(221, 0, 163, 82),
        toolbarHeight: 110,
        centerTitle: true,
        title: Text(
          'Seja bem-vindo(a) $userName!',
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 17,
            color: Colors.white,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 25),
          Center(
            child: Container(
              width: 350,
              height: 200,
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    blurRadius: 5,
                    offset: const Offset(1, 2),
                  ),
                ],
                color: const Color.fromARGB(255, 255, 255, 255),
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Column(
                children: [
                  Text(
                    'Resumo anual',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 34, 102, 15),
                    ),
                  ),
                  SizedBox(height: 12),
                  Text(
                    'teste',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 34, 102, 15),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              OutlinedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.monetization_on),
                label: Text("Receita: R$cifrao$receita"),
                style: OutlinedButton.styleFrom(
                    side:
                        const BorderSide(color: Color.fromARGB(0, 255, 84, 84)),
                    foregroundColor: const Color.fromARGB(255, 10, 119, 0),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4)),
                    textStyle: TextStyle(fontWeight: FontWeight.bold)),
              ),
              OutlinedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.money_off_csred_sharp),
                label: Text("Gastos: R$cifrao$gastos"),
                style: OutlinedButton.styleFrom(
                    side:
                        const BorderSide(color: Color.fromARGB(0, 255, 84, 84)),
                    foregroundColor: const Color.fromARGB(255, 202, 3, 3),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4)),
                    textStyle: TextStyle(fontWeight: FontWeight.bold)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
