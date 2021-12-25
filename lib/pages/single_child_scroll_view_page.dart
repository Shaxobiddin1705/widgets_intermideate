import 'package:flutter/material.dart';

import 'list_view_page.dart';

class ScrollViewPage extends StatefulWidget {
  const ScrollViewPage({Key? key}) : super(key: key);
  static const String id = "single_child_scroll_view_page";

  @override
  _ScrollViewPageState createState() => _ScrollViewPageState();
}

class _ScrollViewPageState extends State<ScrollViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("AppBar"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 200,
              color: Colors.red,
            ),
            Container(
              height: 200,
              color: Colors.green,
            ),
            Container(
              height: 200,
              color: Colors.blue,
            ),
            Container(
              height: 200,
              color: Colors.yellowAccent,
            ),
            const SizedBox(
              height: 50,
            ),
            MaterialButton(
                child: const Text("ListView"),
                color: Colors.blue,
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const ListViewPage()));
                }),
            const SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
