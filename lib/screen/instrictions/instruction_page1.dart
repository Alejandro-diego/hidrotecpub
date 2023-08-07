import 'package:flutter/material.dart';
import 'package:hidrotecpub/responsive.dart';
import 'package:page_transition/page_transition.dart';

import '../../widget/movil_page.dart';
import 'instruction_page2.dart';

class InstructionPage1 extends StatelessWidget {
  const InstructionPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 20, 55, 83),
      appBar: AppBar(
        title: const Text('Instruções Paso 1'),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Responsive(
            mobile: MovilPage(
              step: 1,
              assetImage: 'assets/log1.png',
              textIntruction:
                  'A primeira coisa que vamos fazer é criar uma conta para poder operar nosso aplicativo, vamos inserir um e-mail válido e uma senha (seis dígitos).Então pressionamos onde diz "Precisa de uma Conta?"',
              onPress: () {
                Navigator.push(
                  context,
                  PageTransition(
                    type: PageTransitionType.fade,
                    child: const InstructionPage2(),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
