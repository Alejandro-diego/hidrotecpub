import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import '../screen_two/screen_two.dart';

class ScreenOneMovil extends StatelessWidget {
  const ScreenOneMovil({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    debugPrint(size.toString());
    return Stack(
      children: [
        Positioned(
          top: size.height * 0.03,
          height: size.height * 0.5,
          width: size.width * 0.88,
          left: size.width * 0.08,
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
          left: size.width * 0.01,
          top: size.height * 0.195,
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
          top: size.height * 0.195,
          child: IconButton(
            color: Colors.orange,
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
          width: size.width * 0.86,
          height: size.height * 0.47,
          left: size.width * 0.07,
          bottom: size.height * 0.025,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.black.withOpacity(.7),
              border: Border.all(color: Colors.black),
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Text(
                      'O Aplicativo Hidrotec oferece:',
                      style: TextStyle(
                          fontSize: size.height * 0.025, color: Colors.blue),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.check_box,
                          size: size.height * 0.046,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          'O Controle e configuração \n (automático e ou manual)\n da temperatura da água da piscina .-',
                          style: TextStyle(
                              fontWeight: FontWeight.w900,
                              fontSize: size.height * 0.025),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.check_box,
                          size: size.height * 0.046,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          'A temperatura da água em que\n a mesma se encontra \n em tempo real.-',
                          style: TextStyle(
                              fontWeight: FontWeight.w900,
                              fontSize: size.height * 0.025),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.check_box,
                          size: size.height * 0.046,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Controle automático e manual\n da temperatura da água.-',
                          style: TextStyle(
                              fontWeight: FontWeight.w900,
                              fontSize: size.height * 0.025),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.check_box,
                          size: size.height * 0.046,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Controle da bomba e luzes leds através do\n aplicativo, no dispositivo móvel.-',
                          style: TextStyle(
                              fontWeight: FontWeight.w900,
                              fontSize: size.height * 0.025),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
