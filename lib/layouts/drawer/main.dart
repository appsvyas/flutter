import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DrawerDisplayer extends StatefulWidget {
  const DrawerDisplayer({super.key});

  @override
  State<DrawerDisplayer> createState() => _DrawerDisplayerState();
}

class _DrawerDisplayerState extends State<DrawerDisplayer> {
  @override
  Widget build(BuildContext context) {
    return ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text('Module Navigator'),
          ),
          ListTile(
            title: const Text('Login'),
            onTap: () {
              context.go('/');
            },
          ),
          ListTile(
            title: const Text('List'),
            onTap: () {
              // Update the state of the app.
              // ...
              context.go('/home');
            },
          ),
          ListTile(
            title: const Text('Video'),
            onTap: () {
              // Update the state of the app.
              // ...
              context.go('/video');
            },
          ),
        ]);
  }
}
