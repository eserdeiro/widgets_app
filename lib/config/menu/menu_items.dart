import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final String subTitle;
  final String url;
  final IconData icon;

 const MenuItem({
    required this.title, 
    required this.subTitle, 
    required this.url, 
    required this.icon});
}

const appMenuItems = <MenuItem> [
MenuItem(
  title   : 'Buttons', 
  subTitle: 'Various buttons on flutter', 
  url     : '/buttons', 
  icon    : Icons.smart_button_outlined),
  MenuItem(
  title   : 'Cards', 
  subTitle: 'A stylized container', 
  url     : '/cards', 
  icon    : Icons.credit_card),

  MenuItem(
  title   : 'Progress indicators', 
  subTitle: 'General & controlled', 
  url     : '/progress', 
  icon    : Icons.refresh_rounded),

  MenuItem(
  title   : 'Snackbars , dialogs & licences', 
  subTitle: 'Snackbars, dialogs & licences on flutter', 
  url     : '/snackbars', 
  icon    : Icons.info_outline),

  MenuItem(
  title   : 'Animated container', 
  subTitle: 'Animated stateful widget', 
  url     : '/animated', 
  icon    : Icons.check_box_outline_blank_outlined),

  MenuItem(
  title   : 'UI controls + Tiles', 
  subTitle: 'UI controls on flutter', 
  url     : '/ui-controls', 
  icon    : Icons.car_rental_outlined),

  MenuItem(
  title   : 'Tutorial ', 
  subTitle: 'Small introductory tutorial', 
  url     : '/tutorial', 
  icon    : Icons.add_to_home_screen_sharp),

  MenuItem(
  title   : 'Infinite scroll ', 
  subTitle: 'Fullscreen Infinit list & pull to refresh ', 
  url     : '/infinite', 
  icon    : Icons.list_alt_outlined),

  MenuItem(
  title   : 'Counter Riverpod', 
  subTitle: 'Do in tempor velit', 
  url     : '/counter', 
  icon    : Icons.add_outlined),

   MenuItem(
  title   : 'Theme changer', 
  subTitle: 'Change theme and colors with riverpod', 
  url     : '/theme-changer', 
  icon    : Icons.change_circle_outlined),
];
