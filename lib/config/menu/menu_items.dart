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
  subTitle: 'Buttons on flutter', 
  url     : '/buttons', 
  icon    : Icons.smart_button_outlined),
  MenuItem(
  title   : 'Cards', 
  subTitle: 'Cards on flutter', 
  url     : '/cards', 
  icon    : Icons.credit_card),

  MenuItem(
  title   : 'ProgressIndicators', 
  subTitle: 'Progress indicators on flutter', 
  url     : '/progress', 
  icon    : Icons.refresh_rounded),

  MenuItem(
  title   : 'Snackbars , dialogs & licences', 
  subTitle: 'Snackbars, dialogs & licences on flutter', 
  url     : '/snackbars', 
  icon    : Icons.info_outline),

  MenuItem(
  title   : 'Animated container', 
  subTitle: 'Animated container on flutter', 
  url     : '/animated', 
  icon    : Icons.check_box_outline_blank_outlined),

  MenuItem(
  title   : 'UI controls + Tiles', 
  subTitle: 'UI controls on flutter', 
  url     : '/ui-controls', 
  icon    : Icons.car_rental_outlined)
];
