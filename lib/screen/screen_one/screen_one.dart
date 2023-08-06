import 'package:flutter/material.dart';
import 'package:hidrotecpub/responsive.dart';
import 'package:hidrotecpub/screen/screen_one/screen_one_movil.dart';
import 'package:hidrotecpub/screen/screen_one/screen_one_tablet.dart';
import 'package:hidrotecpub/screen/screen_one/screen_one_web.dart';


class PageOne extends StatefulWidget {
  const PageOne({super.key});

  @override
  State<PageOne> createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 20, 55, 83),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            opacity: .2,
            image: AssetImage('assets/nina.png'),
          ),
        ),
        child: const Responsive(mobile: ScreenOneMovil(), tablet: ScreenOneTablet(),desktop: ScreenOneWeb(),)
      ),
    );
  }
}
