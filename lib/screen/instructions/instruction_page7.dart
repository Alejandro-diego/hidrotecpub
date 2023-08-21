import 'package:flutter/material.dart';
import 'package:hidrotecpub/responsive.dart';
import 'package:page_transition/page_transition.dart';
import '../../widget/desktop_page.dart';
import '../../widget/movil_page.dart';
import '../instruciones_app/instrucciones_app_page1.dart';

class InstructionPage7 extends StatefulWidget {
  const InstructionPage7({super.key});

  @override
  State<InstructionPage7> createState() => _InstructionPage7State();
}

class _InstructionPage7State extends State<InstructionPage7> {
  String instruccion =
      'Seu dispositivo(caixa controle) e app Hidrotec foi instaldo com sucesso !!';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 20, 55, 83),
      appBar: AppBar(
        title: const Text('Instruções Paso 7'),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Responsive(
            mobile: MovilPage(
              step: 7,
              assetImage: 'assets/inst7.png',
              textIntruction: instruccion,
              onPress: () {
                Navigator.push(
                  context,
                  PageTransition(
                    type: PageTransitionType.fade,
                    child: const InstAppPage1(),
                  ),
                );
              },
            ),
            desktop: DesktopPage(
              step: 7,
              assetImage: 'assets/inst7.png',
              textIntruction: instruccion,
              onPress: () {
                Navigator.push(
                  context,
                  PageTransition(
                    type: PageTransitionType.fade,
                    child: const InstAppPage1(),
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
