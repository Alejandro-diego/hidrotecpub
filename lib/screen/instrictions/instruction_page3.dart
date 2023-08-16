import 'package:flutter/material.dart';
import 'package:hidrotecpub/responsive.dart';
import 'package:hidrotecpub/screen/instrictions/instruction_page4.dart';
import 'package:page_transition/page_transition.dart';

import '../../widget/movil_page.dart';


class InstructionPage3 extends StatelessWidget {
  const InstructionPage3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 20, 55, 83),
      appBar: AppBar(
        title: const Text('Instruções Paso 3'),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Responsive(
            mobile: MovilPage(
              step: 3,
              assetImage: 'assets/inst3.png',
              textIntruction: 'Uma vez feito o login vamos pra "Menu" na parte superior direito',
              onPress: () {
                Navigator.push(
                  context,
                  PageTransition(
                    type: PageTransitionType.fade,
                    child: const InstructionPage4(),
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
