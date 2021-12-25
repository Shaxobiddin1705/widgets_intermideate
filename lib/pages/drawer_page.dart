
import 'package:flutter/material.dart';
import 'package:widgets_intermideate/pages/single_child_scroll_view_page.dart';

class DrawerPage extends StatefulWidget {
  const DrawerPage({Key? key}) : super(key: key);
  static const String id = "drawer_page";

  @override
  _DrawerPageState createState() => _DrawerPageState();
}

class _DrawerPageState extends State<DrawerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("App Bar"),
        actions: <Widget>[
          IconButton(
              onPressed: () {
              },
              icon: const Icon(Icons.logout)),
        ],
      ),
      body: Center(
          child: TextButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
            ),
            child: const Text("ScrollViewPage", style: TextStyle(color: Colors.white),),
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => const ScrollViewPage()));
            },
          ),
      ),
      drawer: Drawer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              height: 250,
              color: Colors.blueGrey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text("Sultonov Shaxobiddin",
                      style: TextStyle(color: Colors.blue, fontSize: 18)),
                  Text("Shaxobiddins00@gmail.com",
                      style: TextStyle(color: Colors.blue, fontSize: 18)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
