import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import '../screen_two/screen_two.dart';

class ScreenOneWeb extends StatelessWidget {
  const ScreenOneWeb({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Positioned(
          top: size.height * 0.03,
          height: size.height * 1.2,
          width: size.width * 0.88,
          left: -250,
          child: Hero(
            tag: 'puto',
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/hidro1.png'),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          width: size.width * 0.25,
          height: size.height * 0.07,
          left: size.width * 0.35,
          bottom: size.height * 0.1,
          child: IconButton(
             color: Colors.orangeAccent,
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              size: 40.0,
            ),
          ),
        ),
        Positioned(
          width: size.width * 0.25,
          height: size.height * 0.07,
          right: size.width * 0.01,
          bottom: size.height * 0.1,
          child: IconButton(
             color: Colors.orangeAccent,
            onPressed: () {
              Navigator.push(
                context,
                PageTransition(
                  type: PageTransitionType.rightToLeft,
                  child: const ScreenTwo(),
                ),
              );
            },
            icon: const Icon(
              Icons.arrow_forward_ios,
              size: 40.0,
            ),
          ),
        ),
        Positioned(
          width: size.width * 0.56,
          height: size.height * 0.44,
          right: size.width * 0.01,
          top: size.height * 0.29,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.black.withOpacity(.7),
              border: Border.all(color: Colors.black),
            ),
            child: const SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.check_box,
                          size: 36,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Controle e configuração de temperatura remota da piscina.-',
                          style: TextStyle(
                              fontWeight: FontWeight.w900, fontSize: 18),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.check_box,
                          size: 36,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Display da temperatura do tempo em tempo real.-',
                          style: TextStyle(
                              fontWeight: FontWeight.w900, fontSize: 18),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.check_box,
                          size: 36,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Controle automático e manual da temperatura da água.-',
                          style: TextStyle(
                              fontWeight: FontWeight.w900, fontSize: 18),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.check_box,
                          size: 36,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Controle da bomba a partir do  aplicativo móvel.-',
                          style: TextStyle(
                              fontWeight: FontWeight.w900, fontSize: 18),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.check_box,
                          size: 36,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Controle remoto de luzes LED do dispositivo móvel.-',
                          style: TextStyle(
                              fontWeight: FontWeight.w900, fontSize: 18),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.check_box,
                          size: 36,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Proteção contra geada nas placas.-',
                          style: TextStyle(
                              fontWeight: FontWeight.w900, fontSize: 18),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          width: size.width * 0.25,
          height: size.height * 0.17,
          right: size.width * 0.2,
          top: size.height * 0.05,
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/flex.png'),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
