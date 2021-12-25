import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:widgets_intermideate/pages/drawer_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  static const String id = "home_page";

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void _iosDialog() {
    showDialog(
      context: context,
      builder: (context) => CupertinoAlertDialog(
        title: const Text("Logout"),
        content: const Text("Are you sure you want to logout?"),
        actions: [
          CupertinoDialogAction(
            child: const Text("Cancel"),
            onPressed: () {},
          ),
          CupertinoDialogAction(
            child: const Text("Confirm"),
            onPressed: () {},
          ),
        ],
      ),
    );
  }

  void _androidDialog() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Logout'),
            content: const Text('Are you sure you want to logout?'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text("Cancel"),
              ),
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text("Confirm"))
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("App Bar"),
        actions: <Widget>[
          IconButton(
              onPressed: () {
                if (Platform.isAndroid) _androidDialog();
                if (Platform.isIOS) _iosDialog();
              },
              icon: const Icon(Icons.logout)),
        ],
      ),
      body: Center(
        child: FlatButton(
          color: Colors.blue,
          child: const Text("DrawerPage"),
          onPressed: () {
            Navigator.pushNamed(context, DrawerPage.id);
          },
        ),
      ),

    );
  }
}
