import 'dart:io';

import 'package:electronics_parts_store/screens/settingspage/settingspage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';



Drawer buildDrawer(BuildContext context) {
  return Drawer(
    // Add a ListView to the drawer. This ensures the user can scroll
    // through the options in the drawer if there isn't enough vertical
    // space to fit everything.
    child: ListView(
      // Important: Remove any padding from the ListView.
      padding: EdgeInsets.zero,
      children: [
        const SizedBox(
          height: 50.0,
          child: DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Center(child: Text('Electroincs Parts Store',style: TextStyle(fontWeight: FontWeight.bold,),)
            ),

          ),
        ),
        ListTile(
          title: const Text('Settings'),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SettingsPage()),
            );

          },
        ),
        ListTile(
          title: const Text('Exit'),
          onTap: () {
            SystemNavigator.pop();

          },
        ),
      ],
    ),
  );
}