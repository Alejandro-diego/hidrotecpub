import 'package:flutter/material.dart';
import 'package:hidrotecpub/responsive.dart';
import 'package:hidrotecpub/screen/instructions/instruction_page5.dart';
import 'package:page_transition/page_transition.dart';

import '../../widget/desktop_page.dart';
import '../../widget/movil_page.dart';

class InstructionPage4 extends StatefulWidget {
  const InstructionPage4({super.key});

  @override
  State<InstructionPage4> createState() => _InstructionPage4State();
}

class _InstructionPage4State extends State<InstructionPage4> {
  String instruccion =
      'Comprobar sim nosso BLUETOOTH de nosso telefone esta ligado, e escoller ParearDisp.-';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 20, 55, 83),
      appBar: AppBar(
        title: const Text('Instruções Paso 4'),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Responsive(
            mobile: MovilPage(
              step: 4,
              assetImage: 'assets/inst4.png',
              textIntruction: instruccion,
              onPress: () {
                Navigator.push(
                  context,
                  PageTransition(
                    type: PageTransitionType.fade,
                    child: const InstructionPage5(),
                  ),
                );
              },
            ),
              desktop: DesktopPage(
              step: 4,
              assetImage: 'assets/inst4.png',
              textIntruction: instruccion,
              onPress: () {
                Navigator.push(
                  context,
                  PageTransition(
                    type: PageTransitionType.fade,
                    child: const InstructionPage5(),
                  ),
                );
              },
            ),







          ),
        ],
      ),
    );
  }
}
