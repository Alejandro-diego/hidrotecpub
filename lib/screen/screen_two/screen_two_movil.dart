import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import '../instructions/instruction_page1.dart';

class ScreenTwoMovil extends StatelessWidget {
  const ScreenTwoMovil({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Positioned(
          top: size.height * 0.03,
          height: size.height * 0.8,
          width: size.width * 0.88,
          left: size.width * 0.08,
          child: Hero(
            tag: 'puto',
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/event.png'),
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
            color: Colors.orangeAccent,
            onPressed: () {
              Navigator.push(
                context,
                PageTransition(
                  type: PageTransitionType.rightToLeft,
                  child: const InstructionPage1(),
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
          height: size.height * 0.42,
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
                    padding: const EdgeInsets.only(top: 8.0, bottom: 10),
                    child: Text(
                      'Aqui você adiciona eventos:',
                      style: TextStyle(
                          color: Colors.blue, fontSize: size.height * 0.025),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Seleciona em quais dias da semana\n e a hora que você gostaria que\n a bomba e as luzes leds de sua\n piscina liguem e desliguem \nautomaticamente.-',
                    style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: size.height * 0.025),
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
