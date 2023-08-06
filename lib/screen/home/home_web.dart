import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

import '../../const.dart';
import '../screen_one/screen_one.dart';

class HomeWebPage extends StatelessWidget {
  const HomeWebPage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    String text = 'HIDROTEC';
    return Stack(
      children: [
        Positioned(
          bottom: -350,
          child: Container(
            width: size.width,
            height: size.width + 250,
            decoration: BoxDecoration(
              gradient: RadialGradient(
                radius: 0.65,
                colors: [MisColores.miazul, MisColores.minegro],
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.topCenter,
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Text(
                text,
                style: GoogleFonts.openSans(
                  fontSize: 100,
                  color: Colors.white.withOpacity(
                    (.1),
                  ),
                ),
              ),
              Text(
                text,
                style: GoogleFonts.openSans(
                  fontSize: 100,
                  color: Colors.white.withOpacity(
                    (.075),
                  ),
                ),
              ),
              Text(
                text,
                style: GoogleFonts.openSans(
                  fontSize: 100,
                  color: Colors.white.withOpacity(
                    (.050),
                  ),
                ),
              ),
              Text(
                text,
                style: GoogleFonts.openSans(
                  fontSize: 100,
                  color: Colors.white.withOpacity(
                    (.035),
                  ),
                ),
              ),
            ],
          ),
        ),
        Positioned(
          top: size.height * 0.02,
          height: size.height * .9,
          width: size.width * 1.9,
          right: -100,
          child: Hero(
            tag: 'puto',
            child: Container(
              margin: const EdgeInsets.all(100),
              height: 450,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/hidro.png'),
                ),
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 100),
            child: DefaultTextStyle(
              style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w900,
                  color: Colors.blueAccent),
              child: AnimatedTextKit(
                pause: const Duration(milliseconds: 100),
                totalRepeatCount: 1,
                animatedTexts: [
                  WavyAnimatedText(
                      'Tenha o control de sua piscina .. Na sua mao '),
                ],
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: SizedBox(
            height: 80,
            width: 200,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 28.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    PageTransition(
                      type: PageTransitionType.fade,
                      child: const PageOne(),
                    ),
                  );
                },
                child: const Text(
                  'COMENCAR',
                  style: TextStyle(fontWeight: FontWeight.w900, fontSize: 20),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
