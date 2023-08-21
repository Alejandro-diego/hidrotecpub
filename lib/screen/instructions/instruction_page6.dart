import 'package:flutter/material.dart';
import 'package:hidrotecpub/responsive.dart';
import 'package:hidrotecpub/screen/instructions/instruction_page7.dart';
import 'package:page_transition/page_transition.dart';
import '../../widget/desktop_page.dart';
import '../../widget/movil_page.dart';

class InstructionPage6 extends StatefulWidget {
  const InstructionPage6({super.key});

  @override
  State<InstructionPage6> createState() => _InstructionPage6State();
}

class _InstructionPage6State extends State<InstructionPage6> {
  String instruccion =
      'Selecione sua rede de Wi-Fi e informe o nome da rede e sua senha e confirme.-';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 20, 55, 83),
      appBar: AppBar(
        title: const Text('Instruções Paso 6'),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Responsive(
            mobile: MovilPage(
              step: 6,
              assetImage: 'assets/inst6.png',
              textIntruction: instruccion,
              onPress: () {
                Navigator.push(
                  context,
                  PageTransition(
                    type: PageTransitionType.fade,
                    child: const InstructionPage7(),
                  ),
                );
              },
            ),
            desktop: DesktopPage(
              step: 6,
              assetImage: 'assets/inst6.png',
              textIntruction: instruccion,
              onPress: () {
                Navigator.push(
                  context,
                  PageTransition(
                    type: PageTransitionType.fade,
                    child: const InstructionPage7(),
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
