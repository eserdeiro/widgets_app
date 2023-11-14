import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ButtonsScreen extends StatelessWidget {

  static const String name = "buttons_screen";

  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Buttons screen'),
      ),
      body: _ButtonsView(),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.arrow_back),
        onPressed: (){
          //context.pop();
      }),
    );
  }
}

class _ButtonsView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;

    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: SizedBox(
          child: Wrap(
            spacing: 10,
            alignment: WrapAlignment.center,
            children: [
            ElevatedButton(
              onPressed: () {}, 
              child: const Text('Elevated')),

            const ElevatedButton(
              onPressed: null, 
              child: Text('Disabled')),
            ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.access_alarm_rounded),
                label: const Text('Icon')),

            FilledButton(
              onPressed: () {}, 
              child: const Text('Filled')),
              
            FilledButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.access_alarm_outlined),
              label: const Text('Filled icon')),

            OutlinedButton(
              onPressed: (){}, 
              child: const Text('Outlined')),

            OutlinedButton.icon(
              onPressed: (){},
              icon:  const Icon(Icons.access_alarm_outlined) ,
              label:  const Text('Outlined')),

            TextButton(onPressed: (){}, child: const Text('TextButton')),

            TextButton.icon(
              onPressed: (){},
              icon: const Icon(Icons.access_alarm_outlined) ,
              label: const Text('TextButton')),

            IconButton(onPressed: (){}, icon: const Icon(Icons.access_alarm_outlined)),

            IconButton(
              onPressed: (){}, 
              icon: const Icon(Icons.access_alarm_outlined),
              style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(colors.primary),
                iconColor: const MaterialStatePropertyAll(Colors.white)
              )),

              //TODO custom button
            const CustomButton()
          ]
            ),
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});
  @override
  Widget build(BuildContext context) {

      final colors = Theme.of(context).colorScheme;

    return  ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Material(
        color: colors.primary,
        child:  InkWell(
          onTap: (){},
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text('CustomButton', style: TextStyle(
              color: Colors.white)),
          ),
        ),
      ),
    );
  }
}