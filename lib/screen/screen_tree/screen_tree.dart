import 'package:flutter/material.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

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



      body:const Column(
        mainAxisSize: MainAxisSize.min,
        children: [
        
          Padding(
            padding: EdgeInsets.all(8.0),
            child: StepProgressIndicator(
              totalSteps: 7,
              currentStep: 1,
              selectedColor: Colors.black,
              unselectedColor: Colors.grey,
          ),
          ),
         
       
    
        ],
      ), 
    );
  }
}
