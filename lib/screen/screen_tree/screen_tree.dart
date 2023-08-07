import 'package:flutter/material.dart';
import 'package:flutter_intro/flutter_intro.dart';
import 'package:hidrotecpub/screen/screen_tree/simple_usage.dart';
import 'demo_usage.dart';
class TreePage extends StatefulWidget {
  const TreePage({super.key});

  @override
  State<TreePage> createState() => _TreePageState();
}

class _TreePageState extends State<TreePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: const Color.fromARGB(255, 20, 55, 83),
      appBar: AppBar(
        title: const Text('Instruções'),
      ),



      body:Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => Intro(
                      padding: EdgeInsets.zero,
                      borderRadius: const BorderRadius.all(Radius.circular(4)),
                      maskColor: const Color.fromRGBO(0, 0, 0, .6),
                      child: const DemoUsage(),
                    ),
                  ),
                );
              },
              child: const Text('Demo'),
            ),
         
    
          ],
        ),
      ), 
    );
  }
}
