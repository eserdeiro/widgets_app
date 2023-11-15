import 'dart:math';
import 'package:flutter/material.dart';

class AnimatedScreen extends StatelessWidget {
  static const name = 'animated_screen';

  const AnimatedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const _AnimatedView();
  }
}

class _AnimatedView extends StatefulWidget {
  const _AnimatedView();

  @override
  State<_AnimatedView> createState() => _AnimatedViewState();
}

class _AnimatedViewState extends State<_AnimatedView> {

  double width = 50;
  double height = 50;
  Color colors = Colors.blue;
    
  double borderRadius = 20.0;

  void changeShape(){
    final random = Random();
    width = random.nextInt(300) + 10;
    height = random.nextInt(300) + 10;
    borderRadius = random.nextInt(100) * 10;
    colors = Color.fromRGBO(
      random.nextInt(255), 
      random.nextInt(255), 
      random.nextInt(255), 
      random.nextDouble() * 255);
    setState(() { });
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Animated Container')
        ),
        
        floatingActionButton: FloatingActionButton(
          onPressed: () => changeShape(),
        child: const Icon(Icons.play_arrow_outlined)),

        body: Center(
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 400),
              width : width,
              height: height,
              curve: Curves.decelerate,
              decoration: BoxDecoration(
                color: colors, 
                borderRadius: BorderRadius.circular(borderRadius)),
                child: const Center(
                  child: Text('❤️')
                  ),
          ),
        ),
    );
  }
}