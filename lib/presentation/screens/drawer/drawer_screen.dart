import 'package:flutter/material.dart';
import 'package:yeteamboxd/constants/constant.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Constant.kMainColor,
      child: ListView(children: <Widget>[
        DrawerHeader(
          decoration: const BoxDecoration(),
          child: Image.asset('assets/images/Dots.png'),
        ),
        ListTile(
          title: const Text('Home'),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          title: const Text('About'),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          title: const Text('Contact'),
          onTap: () {
            Navigator.pop(context);
          },
        ),
      ]),
    );
  }
}
