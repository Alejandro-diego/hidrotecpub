import 'package:flutter/material.dart';
import 'package:hidrotecpub/responsive.dart';
import 'package:page_transition/page_transition.dart';

import '../../widget/movil_page.dart';
import 'instruction_page3.dart';

class InstructionPage2 extends StatelessWidget {
  const InstructionPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 20, 55, 83),
      appBar: AppBar(
        title: const Text('Instruções Paso 2'),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Responsive(
            mobile: MovilPage(
              step: 2,
              assetImage: 'assets/inst2.png',
              textIntruction: 'Prencher os datos, Nome, E-mail valido, senha(6 digitos), numero de Dipositivo, CEP do local.-  ',
              onPress: () {
                Navigator.push(
                  context,
                  PageTransition(
                    type: PageTransitionType.fade,
                    child: const InstructionPage3(),
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
