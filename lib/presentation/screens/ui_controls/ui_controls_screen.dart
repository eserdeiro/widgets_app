import 'package:flutter/material.dart';

class UiControlsScreen extends StatelessWidget {

  static const name = 'ui_controls_screen';

  const UiControlsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('UI Controls'),
        ),
        body: const _UiControlsView(),
    );
  }
}

class _UiControlsView extends StatefulWidget {
  const _UiControlsView();

  @override
  State<_UiControlsView> createState() => _UiControlsViewState();
}

    enum Transportation {
      car,
      plane,
      boat
    }

    String getSelectedText(Transportation selectedTransportation) {
  switch (selectedTransportation) {
    case Transportation.car:
      return 'Car  🚗 ';
    case Transportation.plane:
      return 'Plane ✈️';
    case Transportation.boat:
      return 'Boat ⛵';
    default:
      return ''; // Manejar el caso por defecto si es necesario
  }
}



class _UiControlsViewState extends State<_UiControlsView> {

    bool isDeveloper = false;
    Transportation selectedTransportation = Transportation.car;

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics:const ClampingScrollPhysics(),

      children: [
        SwitchListTile(
          title: const Text('Switch List Tile'),
          subtitle: const Text('Fugiat veniam duis mollit consequat labore eu dolore.'),
          value: isDeveloper, 
          onChanged: (value) => setState(() {
            isDeveloper = !isDeveloper;
          })),

        RadioListTile(
          title: const Text('By car'),
          subtitle: const Text('Lorem officia dolore cillum elit ad laboris exercitation tempor.'),
          value: Transportation.car, 
          groupValue: selectedTransportation, 
          onChanged: (value) {
          setState(() {
            selectedTransportation = Transportation.car;
          });
        }),

        RadioListTile(
          title: const Text('By plane'),
          subtitle: const Text('Consectetur ut labore voluptate nulla tempor ullamco do.'),
          value: Transportation.plane, 
          groupValue: selectedTransportation, 
          onChanged: (value) {
          setState(() {
            selectedTransportation = Transportation.plane;
          });
        }),

        RadioListTile(
          title: const Text('By boat'),
          subtitle: const Text('Sit in consectetur amet cupidatat cillum sit officia cupidatat cillum.'),
          value: Transportation.boat, 
          groupValue: selectedTransportation, 
          onChanged: (value) {
          setState(() {
            selectedTransportation = Transportation.boat;
          });
        }),

        
        Text('${getSelectedText(selectedTransportation)} Selected', textAlign: TextAlign.center,)
      ],
    );
  }
}