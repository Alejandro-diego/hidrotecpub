
import 'package:flutter/material.dart';
import 'package:hidrotecpub/responsive.dart';

import '../../const.dart';
import 'home_movil.dart';
import 'home_web.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(color: MisColores.minegro),
        child: const Responsive(mobile: HomeMovil(), desktop: HomeWebPage(), tablet: HomeMovil(),)
      ),
    );
  }
}
