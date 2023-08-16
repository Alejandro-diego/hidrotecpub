import 'package:flutter/material.dart';
import 'package:hidrotecpub/responsive.dart';
import 'package:hidrotecpub/screen/instrictions/instruction_page5.dart';
import 'package:page_transition/page_transition.dart';

import '../../widget/movil_page.dart';


class InstructionPage4 extends StatelessWidget {
  const InstructionPage4({super.key});

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
            textIntruction: 'Comprobar sim nosso BLUETOOTH de nosso telefone esta ligado, e escoller ParearDisp.-',
            onPress: () {
              Navigator.push(
                context,
                PageTransition(
                  type: PageTransitionType.fade,
                  child: const InstructionPage5(),
                ),
              );
            },
          ),)
        ],
      ),
    );
  }
}
