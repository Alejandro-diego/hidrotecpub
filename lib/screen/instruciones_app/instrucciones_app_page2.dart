import 'package:flutter/material.dart';

class InstAppPage2 extends StatefulWidget {
  const InstAppPage2({super.key});

  @override
  State<InstAppPage2> createState() => _InstAppPage2State();
}

class _InstAppPage2State extends State<InstAppPage2> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 20, 55, 83),
      body: Center(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Informacoes do App',
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
                  image: AssetImage('assets/info1.png'),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(5),
              height: size.height * 0.4,
              width: size.width * 0.7,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.black.withOpacity(.7),
                border: Border.all(color: Colors.black),
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const Text(
                      'Control Led',
                      style: TextStyle(
                          fontWeight: FontWeight.w700, color: Colors.orange),
                    ),
                    const Text(
                        ' Permite que você assuma o controle total da iluminação do sua piscina.\nAproveite as inúmeras combinações de cores e efeitos de iluminação.'),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 150,
                            width: 150,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/info2.png'),
                              ),
                            ),
                          ),
                        ),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Liga e desliga os Leds.'),
                            SizedBox(
                              height: 60,
                            ),
                            Text('Liga e desliga Efeitos.'),
                          ],
                        )
                      ],
                    ),
                    const Text(
                      'Temperatura Ambiente',
                      style: TextStyle(
                          fontWeight: FontWeight.w700, color: Colors.orange),
                    ),
                    const Text(
                        'Indica o estado do tempo de seu local .'),
            
             
             
                
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
                onPressed: () {},
                child: const Text(
                  'Proximo',
                  style: TextStyle(fontWeight: FontWeight.w900),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
