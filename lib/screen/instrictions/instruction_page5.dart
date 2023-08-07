import 'package:flutter/material.dart';
import 'package:hidrotecpub/responsive.dart';
import 'package:page_transition/page_transition.dart';
import '../../widget/movil_page.dart';

import 'instruction_page6.dart';

class InstructionPage5 extends StatelessWidget {
  const InstructionPage5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 20, 55, 83),
      appBar: AppBar(
        title: const Text('Instruções Paso 5'),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Responsive(
              mobile: MovilPage(
            step: 5,
            assetImage: 'assets/log1.png',
            textIntruction: 'Quinta instruccion',
            onPress: () {
              Navigator.push(
                context,
                PageTransition(
                  type: PageTransitionType.fade,
                  child: const InstructionPage6(),
                ),
              );
            },
          ),)
        ],
      ),
    );
  }
}
