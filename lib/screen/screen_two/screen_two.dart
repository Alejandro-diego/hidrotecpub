import 'package:flutter/material.dart';
import 'package:hidrotecpub/responsive.dart';
import 'package:hidrotecpub/screen/screen_two/screen_two_movil.dart';
import 'package:hidrotecpub/screen/screen_two/screen_two_tablet.dart';
import 'package:hidrotecpub/screen/screen_two/screen_two_web.dart';

class ScreenTwo extends StatelessWidget {
  const ScreenTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 20, 55, 83),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            opacity: .2,
            image: AssetImage('assets/nino.png'),
          ),
        ),
        child: const Responsive(
          mobile: ScreenTwoMovil(),tablet:ScreenTwoTablet() ,desktop: ScreeTwoWeb(),
        ),
      ),
    );
  }
}
