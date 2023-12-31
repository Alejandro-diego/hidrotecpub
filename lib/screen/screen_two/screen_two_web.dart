import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import '../instructions/instruction_page1.dart';

class ScreeTwoWeb extends StatelessWidget {
  const ScreeTwoWeb({super.key});

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
                  image: AssetImage('assets/event.png'),
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
          width: size.width * 0.56,
          height: size.height * 0.34,
          right: size.width * 0.01,
          top: size.height * 0.29,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.black.withOpacity(.7),
              border: Border.all(color: Colors.black),
            ),
            child:  SingleChildScrollView(
              child: Column(
                children: [
                   Padding(
                    padding: const EdgeInsets.only(top: 8.0, bottom: 10),
                    child: Text(
                      'Aqui você adiciona eventos:',
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                          color: Colors.blue, fontSize: size.height * 0.035),
                    ),
                  ),

  Text(
                    'Seleciona em quais dias da semana e a hora que você\ngostaria que a bomba e as luzes leds de sua piscina\nliguem e desliguem automaticamente.-',
                    style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: size.height * 0.025),
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
