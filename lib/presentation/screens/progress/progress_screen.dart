import 'package:flutter/material.dart';

class ProgressScreen extends StatelessWidget {

  static const name = 'progress_screen';

  const ProgressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Progress indicator'),
      ),
      body: const _ProgressView(),
    );
  }
}

class _ProgressView extends StatelessWidget {
  const _ProgressView();

  @override
  Widget build(BuildContext context) {

    return  const Center(
      child: Column(
        children: [
          SizedBox(height: 30),
          Text('Circular progress indicator'),
          SizedBox(height: 10),
          CircularProgressIndicator(strokeWidth: 2, backgroundColor: Colors.black12),
          SizedBox(height: 20),
          Text('Progress & linear indicator controlled'),
          _ControllerProgressIndicator()
        ]),
    );
  }
}

class _ControllerProgressIndicator extends StatelessWidget {
  const _ControllerProgressIndicator();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: Stream.periodic(const Duration(milliseconds: 300), (value){
        return (value * 2) / 100;
      }).takeWhile((value) => value <= 1),
      builder: (context, snapshot) {
        final progressValue = snapshot.data ?? 0;
        return  Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircularProgressIndicator(value: progressValue,strokeWidth: 2, backgroundColor: Colors.black12),
                  const SizedBox(width: 20),
                  Expanded(child: LinearProgressIndicator(value: progressValue))
                ],
              ),
              progressValue >= 1 ? const Text('Thanks for watching!') : Text('Loading...${(progressValue * 100).toInt()} %'),
            ],
          ),
        );
      }
    );
  }
}