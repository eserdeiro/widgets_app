import 'package:flutter/material.dart';
import 'package:widgets_app/config/menu/menu_items.dart';
import 'package:widgets_app/config/theme/app_theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Flutter + Material 3',
        ),
      ),
      body: _HomeView(),
    );
  }
}

class _HomeView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      itemCount: appMenuItems.length,
      itemBuilder: (context, index) {
        final menuItem = appMenuItems[index];
        return _CustomList(menuItem: menuItem);
      },
      );
  }
}

class _CustomList extends StatelessWidget {
  const _CustomList({
    required this.menuItem,
  });

  final MenuItem menuItem;
  @override
  Widget build(BuildContext context) {

   final colors = Theme.of(context).colorScheme;

    return ListTile(
          leading: Icon(menuItem.icon, color: colors.primary),
          trailing: const Icon(Icons.arrow_forward),
          title: Text(menuItem.title),
          subtitle: Text(menuItem.subTitle),
          onTap: () {
            //TODO navigate to another screen
          },

    );
  }
}
