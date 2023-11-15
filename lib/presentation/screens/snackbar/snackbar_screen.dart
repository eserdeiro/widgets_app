import 'package:flutter/material.dart';

class SnackbarScreen extends StatelessWidget {
  static const name = 'snackbar_screen';

  const SnackbarScreen({super.key});

  void showCustomSnackbar(BuildContext context) {
    final scaffoldMessenger = ScaffoldMessenger.of(context);
    scaffoldMessenger.clearSnackBars();
    scaffoldMessenger.showSnackBar( SnackBar(
      content: const Text('Hello world'),
      duration: const Duration(seconds: 2),
      action: SnackBarAction(label: 'Label', onPressed: (){
        //
      }),
      ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Snackbars & dialogs')),
      floatingActionButton: FloatingActionButton.extended(
          onPressed:() => showCustomSnackbar(context),
          label: const Text('Show snackbar'),
          icon: const Icon(Icons.remove_red_eye_outlined)),
      body: const _SnackbarView(),
    );
  }
}

class _SnackbarView extends StatelessWidget {
  const _SnackbarView();

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Lorem ipsum'),
    );
  }
}
