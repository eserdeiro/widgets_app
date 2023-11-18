import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:widgets_app/config/menu/menu_items.dart';
import 'package:widgets_app/presentation/widgets/home/side_menu.dart';

class HomeScreen extends StatelessWidget {

  static const String name = "home_screen";

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
      drawer: const SideMenu()
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
          title: Text(menuItem.title),
          subtitle: Text(menuItem.subTitle),
          leading: Icon(menuItem.icon, color: colors.primary),
          trailing: const Icon(Icons.arrow_forward),
          onTap: () {
          context.push(menuItem.url);
          },
    );
  }
}
