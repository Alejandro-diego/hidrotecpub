import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class DesktopPage extends StatefulWidget {
  const DesktopPage(
      {super.key,
      required this.step,
      required this.assetImage,
      required this.textIntruction,
      required this.onPress});
  final int step;
  final String assetImage;
  final String textIntruction;
  final dynamic onPress;

  @override
  State<DesktopPage> createState() => _DesktopPageState();
}

class _DesktopPageState extends State<DesktopPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: StepProgressIndicator(
            totalSteps: 7,
            currentStep: widget.step,
            selectedColor: const Color.fromARGB(255, 48, 140, 247),
            unselectedColor: Colors.grey,
          ),
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                height:  size.height * 0.6,
                width: size.width * 0.4,
                decoration: BoxDecoration(
                  image: DecorationImage(fit: BoxFit.fitHeight,
                    image: AssetImage(widget.assetImage),
                  ),
                ),
              ),
            ),
                    Container(
              height: size.height * 0.4,
              width: size.width * 0.4,
              decoration: BoxDecoration(
                  color: Colors.black.withOpacity(.7),
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(12),),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: DefaultTextStyle(
                    style: const TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 20.0,
                        color: Colors.white),
                    child: AnimatedTextKit(
                      totalRepeatCount: 1,
                      animatedTexts: [TyperAnimatedText(widget.textIntruction)],
                    ),
                  ),
                ),
              ),
            ),


          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: const Icon(
                Icons.arrow_back_ios,
                size: 40.0,
              ),
            ),
    
            IconButton(
              onPressed: widget.onPress,
              icon: const Icon(
                Icons.arrow_forward_ios,
                size: 40.0,
              ),
            ),
          ],
        )
      ],
    );
  }
}
