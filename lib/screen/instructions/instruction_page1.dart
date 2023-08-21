import 'package:flutter/material.dart';
import 'package:hidrotecpub/responsive.dart';
import 'package:hidrotecpub/widget/desktop_page.dart';
import 'package:page_transition/page_transition.dart';

import '../../widget/movil_page.dart';
import 'instruction_page2.dart';

class InstructionPage1 extends StatefulWidget {
  const InstructionPage1({super.key});

  @override
  State<InstructionPage1> createState() => _InstructionPage1State();
}

class _InstructionPage1State extends State<InstructionPage1> {
  String instruccion =
      'Para o primeiro acesso ao app:\n Clique em criar conta.- ';

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
              assetImage: 'assets/inst1.png',
              textIntruction: instruccion,
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
            desktop: DesktopPage(
              step: 1,
              assetImage: 'assets/inst1.png',
              textIntruction: instruccion,
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
