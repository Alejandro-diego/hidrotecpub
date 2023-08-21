import 'package:flutter/material.dart';

import 'package:page_transition/page_transition.dart';

import '../home/home_page.dart';

class InstAppPage3 extends StatefulWidget {
  const InstAppPage3({super.key});

  @override
  State<InstAppPage3> createState() => _InstAppPage3State();
}

class _InstAppPage3State extends State<InstAppPage3> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 20, 55, 83),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 8.0),
                child: Text(
                  'Informações do App',
                  style: TextStyle(
                      color: Colors.lightBlueAccent,
                      fontSize: 25,
                      fontWeight: FontWeight.w900),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(20),
                height: 200,
                width: 280,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/info3.png'),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(5),
                height: size.height * 0.4,
                width: size.width * 0.85,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.black.withOpacity(.7),
                  border: Border.all(color: Colors.black),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      const Text(
                        'Evento',
                        style: TextStyle(
                            fontWeight: FontWeight.w700, color: Colors.orange),
                      ),
                      const Text(
                          ' Crie um evento que permite automatizar a bomba de água, luzes LED, vá ao menu, escolha um Evento.-'),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 150,
                          width: 350,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/info4.png'),
                            ),
                          ),
                        ),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 50,
                              width: 100,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('assets/info5.png'),
                                ),
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text('Habilta o evento.'),
                          ),
                        ],
                      ),
                      const Text(
                        'Ative uma automação',
                        style: TextStyle(
                            fontWeight: FontWeight.w700, color: Colors.orange),
                      ),
                      Container(
                        height: 100,
                        width: 300,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/info6.png'),
                          ),
                        ),
                      ),
                      const Text(
                          'Aperte em "Ligar" para selecionar um horário de inicio.'),
                      const Text(
                          'Marque em "Todos os dias" permite uma automação semanal diária.'),
                      Container(
                        height: 100,
                        width: 300,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/info7.png'),
                          ),
                        ),
                      ),
                      const Text(
                          'Desmarcar em "Todos os dias"  permite uma automação por \n dias da semana selecionados.-'),
                      Container(
                        height: 100,
                        width: 300,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/info8.png'),
                          ),
                        ),
                      ),
                      const Text(
                          'Aperte em "Desligar" para escolher um horario de fin.'),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              SizedBox(
                width: 200,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(),
                  onPressed: () {
                    Navigator.push(
                      context,
                      PageTransition(
                        type: PageTransitionType.fade,
                        child: const HomePage(),
                      ),
                    );
                  },
                  child: const Text(
                    'Proximo',
                    style: TextStyle(fontWeight: FontWeight.w900),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
