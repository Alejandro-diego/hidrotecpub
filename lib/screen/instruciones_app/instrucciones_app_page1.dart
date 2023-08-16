import 'package:flutter/material.dart';

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
              'Informacoes do App',
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
                width: 200,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/info.png'),
                  ),
                ),
              ),
              Container(
                height: size.height * 0.5,
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
                          'Indica a temperatura seleccionada \n por os botones subir e baixar.'),
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
                          'Indica a temperatura atual \n del agua de sua piscinas.'),
                      const Text(
                        'Bomba',
                        style: TextStyle(
                            fontWeight: FontWeight.w700, color: Colors.orange),
                      ),


                        const Text(
                          'Liga e deliga em forma manual \n a bomba de agua.'),


                             const Text(
                        'Auto',
                        style: TextStyle(
                            fontWeight: FontWeight.w700, color: Colors.orange),
                      ),


                        const Text(
                          'Liga e deliga em forma automatica \n quando atingir a temperatura \nseleccionada pelo SET.'),






                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
