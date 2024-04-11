import 'package:flutter/material.dart';

import 'main.dart';

class DrawerMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          _buildDrawerHeader(),
          _buildDrawerItem(
              icon: Icons.home,
              text: '.Center',
              onTap: () =>
                  {Navigator.pushReplacementNamed(context, MyApp.home)}),
          _buildDrawerItem(
              icon: Icons.account_circle,
              text: '.spaceEvenly',
              onTap: () =>
                  {Navigator.pushReplacementNamed(context, MyApp.profile)}),
          _buildDrawerItem(
              icon: Icons.movie,
              text: '.End',
              onTap: () =>
                  {Navigator.pushReplacementNamed(context, MyApp.end2)}),
          _buildDrawerItem(
              icon: Icons.format_indent_decrease,
              text: '.start',
              onTap: () =>
                  {Navigator.pushReplacementNamed(context, MyApp.start)}),
          _buildDrawerItem(
              icon: Icons.crop_portrait,
              text: 'spaceAround',
              onTap: () =>
                  {Navigator.pushReplacementNamed(context, MyApp.spaceAr)}),
          _buildDrawerItem(
              icon: Icons.account_tree,
              text: '.spaceBetween',
              onTap: () =>
                  {Navigator.pushReplacementNamed(context, MyApp.spaceBe)}),
          Divider(),
          _buildDrawerItem(
              icon: Icons.contact_phone,
              text: 'Stretch',
              onTap: () =>
                  {Navigator.pushReplacementNamed(context, MyApp.stretch)}),
          ListTile(
            title: Text('App version 1.0.0'),
            onTap: () {},
          ),
        ],
      ),
    );
  }

  Widget _buildDrawerHeader() {
    return DrawerHeader(
        margin: EdgeInsets.zero,
        padding: EdgeInsets.zero,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage('assets/drawer_header.jpg'))),
        child: Stack(children: <Widget>[
          Positioned(
              bottom: 12.0,
              left: 16.0,
              child: Text(" Compilacion Movil\n Hector Reza",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w500))),
        ]));
  }

  Widget _buildDrawerItem(
      {required IconData icon,
      required String text,
      required GestureTapCallback onTap}) {
    return ListTile(
      title: Row(
        children: <Widget>[
          Icon(icon),
          Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: Text(text),
          )
        ],
      ),
      onTap: onTap,
    );
  }
}
