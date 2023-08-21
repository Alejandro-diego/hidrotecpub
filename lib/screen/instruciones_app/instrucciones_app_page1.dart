import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import 'instrucciones_app_page2.dart';

class InstAppPage1 extends StatefulWidget {
  const InstAppPage1({super.key});

  @override
  State<InstAppPage1> createState() => _InstAppPage1State();
}

class _InstAppPage1State extends State<InstAppPage1> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 20, 55, 83),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Informações do App',
              style: TextStyle(
                  color: Colors.lightBlueAccent,
                  fontSize: 25,
                  fontWeight: FontWeight.w900),
            ),
          ),
          Row(
            children: [
              Container(
                height: 400,
                width: 180,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/info.png'),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(5),
                height: size.height * 0.7,
                width: size.width * 0.5,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.black.withOpacity(.7),
                  border: Border.all(color: Colors.black),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      const Text(
                        'TempSet',
                        style: TextStyle(
                            fontWeight: FontWeight.w700, color: Colors.orange),
                      ),
                      const Text(
                          'As setas permitem o ajuste da temperatura desejada.'),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 50,
                          width: 200,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/botonset.png'),
                            ),
                          ),
                        ),
                      ),
                      const Text(
                        'TempAtual',
                        style: TextStyle(
                            fontWeight: FontWeight.w700, color: Colors.orange),
                      ),
                      const Text(
                          'Indica a temperatura atual \nem que se encontra a água da piscina.'),
                      const Text(
                        'Bomba',
                        style: TextStyle(
                            fontWeight: FontWeight.w700, color: Colors.orange),
                      ),
                      const Text('Liga e deliga no formato manual.-'),
                      const Text(
                        'Auto',
                        style: TextStyle(
                            fontWeight: FontWeight.w700, color: Colors.orange),
                      ),
                      const Text(
                          'Liga e desliga no formato automático \n quando atingir a temperatura \nseleccionada pelo "TempSeT".'),
                      const Text(
                        'Disp:',
                        style: TextStyle(
                            fontWeight: FontWeight.w700, color: Colors.orange),
                      ),
                      const Text(
                          'Indica o número de seu \n dispositivo(caixa controle) .'),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Icon(
                              Icons.access_time,
                              color: Colors.red,
                            ),
                            Text('    Indica evento Ativado'),
                          ],
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Icon(
                              Icons.access_time,
                              color: Colors.grey,
                            ),
                            Text('    Indica evento Desativado'),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 50,
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
                    child: const InstAppPage2(),
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
    );
  }
}
