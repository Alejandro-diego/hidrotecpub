import 'package:flutter/material.dart';
import 'package:hidrotecpub/responsive.dart';
import 'package:hidrotecpub/screen/instrictions/instruction_page7.dart';
import 'package:page_transition/page_transition.dart';
import '../../widget/movil_page.dart';


class InstructionPage6 extends StatelessWidget {
  const InstructionPage6({super.key});

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
            textIntruction: 'Comprobar sim nosso Router de Wi-Fi esta ligado, e escoller nossa rede e senha.-',
            onPress: () {
              Navigator.push(
                context,
                PageTransition(
                  type: PageTransitionType.fade,
                  child: const InstructionPage7(),
                ),
              );
            },
          ),)
        ],
      ),
    );
  }
}
