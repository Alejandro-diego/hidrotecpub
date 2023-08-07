import 'package:flutter/material.dart';
import 'package:flutter_intro/flutter_intro.dart';

class DemoUsage extends StatefulWidget {
  const DemoUsage({Key? key}) : super(key: key);

  @override
  State<DemoUsage> createState() => _DemoUsageState();
}

class _DemoUsageState extends State<DemoUsage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 270,
              height: 300,
              child: IntroStepBuilder(
                order: 2,
                text:
                    'A primeira coisa que vamos fazer é criar uma conta para poder operar nosso aplicativo, vamos inserir um e-mail válido e uma senha (seis dígitos). Então pressionamos onde diz "Precisa de uma Conta?"',
                builder: (context, key) => Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/log1.png'),
                    ),
                  ),
                  key: key,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 270,
              height: 300,
              child: IntroStepBuilder(
                order: 3,
                text:
                    'My usage is also very simple, you can quickly learn and use it through example and api documentation.',
                builder: (context, key) => Placeholder(
                  key: key,
                  fallbackHeight: 100,
                ),
              ),
            ),
             const SizedBox(
              height: 20,
            ),
          
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      floatingActionButton: IntroStepBuilder(
        order: 1,
        text:
            'Bem-vindo ao aplicativo da sua piscina , vamos comencar a utilizar , paso a paso',
        builder: (context, key) => FloatingActionButton(
          key: key,
          child: const Icon(
            Icons.play_arrow,
          ),
          onPressed: () {
            Intro.of(context).start();
          },
        ),
      ),
    );
  }
}
