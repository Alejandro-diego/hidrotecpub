import 'package:flutter/material.dart';
import 'package:hidrotecpub/responsive.dart';
import 'package:page_transition/page_transition.dart';
import '../../widget/desktop_page.dart';
import '../../widget/movil_page.dart';

import 'instruction_page6.dart';

class InstructionPage5 extends StatefulWidget {
  const InstructionPage5({super.key});

  @override
  State<InstructionPage5> createState() => _InstructionPage5State();
}

class _InstructionPage5State extends State<InstructionPage5> {
  String instruccion =
      'Certifique-se que o dispositvo Hidrotec_BLE_Disp foi encontrado e clique nele.-';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 20, 55, 83),
      appBar: AppBar(
        title: const Text('Instruções Passo 5'),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Responsive(
            mobile: MovilPage(
              step: 5,
              assetImage: 'assets/inst5.png',
              textIntruction: instruccion,
              onPress: () {
                Navigator.push(
                  context,
                  PageTransition(
                    type: PageTransitionType.fade,
                    child: const InstructionPage6(),
                  ),
                );
              },
            ),
            desktop: DesktopPage(
              step: 5,
              assetImage: 'assets/inst5.png',
              textIntruction: instruccion,
              onPress: () {
                Navigator.push(
                  context,
                  PageTransition(
                    type: PageTransitionType.fade,
                    child: const InstructionPage6(),
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
