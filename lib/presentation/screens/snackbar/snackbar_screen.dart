import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';


class SnackbarScreen extends StatelessWidget {
  static const name = 'snackbar_screen';

  const SnackbarScreen({super.key});

  void showCustomSnackbar(BuildContext context) {
    final scaffoldMessenger = ScaffoldMessenger.of(context);
    scaffoldMessenger.clearSnackBars();
    scaffoldMessenger.showSnackBar(SnackBar(
      content: const Text('Hello world'),
      duration: const Duration(seconds: 2),
      action: SnackBarAction(
          label: 'Label',
          onPressed: () {
            //
          }),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Snackbars & dialogs')),
      floatingActionButton: FloatingActionButton.extended(
          onPressed: () => showCustomSnackbar(context),
          label: const Text('Show snackbar'),
          icon: const Icon(Icons.remove_red_eye_outlined)),
      body: const _SnackbarView(),
    );
  }
}

class _SnackbarView extends StatelessWidget {
  const _SnackbarView();

  void openDialog(BuildContext context) {
  showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return  AlertDialog(
          title: const Text('Custom dialog'),
          alignment: Alignment.center,
          content: const Text('Quis voluptate in ex veniam ipsum.'),
          actions: [
            TextButton(
              child: const Text('Cancel'),
              onPressed: () => context.pop(), 
              ),
              FilledButton(
              child: const Text('Ok'),
              onPressed: () {}, 
              ),
          ],
        );
      });
}

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FilledButton(
            child: const Text('Licenses'),
            onPressed: () {
              showAboutDialog(
                context: context, 
                children: [
                const Text(
                    'Sit enim proident in incididunt enim est.')
              ]);
            },
          ),

          FilledButton.tonal(
            child: const Text('Show dialog'),
            onPressed: () {
              openDialog(context);
              },
          )
        ],
      ),
    );
  }
}
