import 'package:flutter/material.dart';
import 'package:hidrotecpub/responsive.dart';
import 'package:page_transition/page_transition.dart';

import '../../widget/desktop_page.dart';
import '../../widget/movil_page.dart';
import 'instruction_page3.dart';

class InstructionPage2 extends StatefulWidget {
  const InstructionPage2({super.key});

  @override
  State<InstructionPage2> createState() => _InstructionPage2State();
}

class _InstructionPage2State extends State<InstructionPage2> {
  String instruccion =
      'Preencha os espaços com seus dados. Senha(6 dígitos).\n Número do dispositivo se encontra na parte lateral da caixa controle.\n Clique em "Criar Conta".-  ';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 20, 55, 83),
      appBar: AppBar(
        title: const Text('Instruções Passo 2'),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Responsive(
            mobile: MovilPage(
              step: 2,
              assetImage: 'assets/inst2.png',
              textIntruction: instruccion,
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
            desktop: DesktopPage(
              step: 2,
              assetImage: 'assets/inst2.png',
              textIntruction: instruccion,
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
