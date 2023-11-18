import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:widgets_app/config/menu/menu_items.dart';

class SideMenu extends StatefulWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;
  const SideMenu({
    super.key, 
    required this.scaffoldKey});

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {

  int navDrawerIndex = 0;

  @override
  Widget build(BuildContext context) {

    final hasNotch = MediaQuery.of(context).viewPadding.top > 35;
    
    return NavigationDrawer(
      selectedIndex: navDrawerIndex,
      onDestinationSelected: (value) {
        setState(() {
          navDrawerIndex = value;
        });
        if(value == 0){
          context.push('/');
        }else{
          final menuItem = appMenuItems[value-1];
          context.push(menuItem.url);
          widget.scaffoldKey.currentState?.closeDrawer();
        }
         
        
      },
      children: [

        Padding(
            padding: EdgeInsets.fromLTRB(28, hasNotch ? 10 : 20, 16, 20),
            child: const Text('Home'),
          ),

          const NavigationDrawerDestination(
            icon: Icon(Icons.home), 
            label: Text('Home')),


          const Padding(
              padding: EdgeInsets.fromLTRB(28, 20, 16, 20),
              child: Text('Widgets'),
            ),

          ...appMenuItems
          .sublist(0,3)
          .map((items) => 
           NavigationDrawerDestination(
          icon: Icon(items.icon), 
          label: Text(items.title),
          ),
          ),
        
        const Padding(
          padding: EdgeInsets.fromLTRB(28, 0, 16, 20),
          child: Divider(),
        ),  

        const Padding(
          padding: EdgeInsets.fromLTRB(28, 20, 16, 20),
          child: Text('More options'),
        ),

          ...appMenuItems
          .sublist(3)
          .map((items) => 
           NavigationDrawerDestination(
          icon: Icon(items.icon), 
          label: Text(items.title),
          ),
          ),

      ],
    );
  }
}