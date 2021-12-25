import 'package:flutter/material.dart';
import 'package:widgets_intermideate/pages/page_controller_navigation_bar_page.dart';

class PageViewPage extends StatefulWidget {
  const PageViewPage({Key? key}) : super(key: key);
  static const String id = "page_view_page";

  @override
  _PageViewPageState createState() => _PageViewPageState();
}

class _PageViewPageState extends State<PageViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("AppBar"),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => const PageControllerNavigationBarPage()));
            },
            icon: const Icon(Icons.next_plan),
          ),
        ],
      ),
      body: PageView(
        children: [
          Container(
            color: Colors.pink,
            child: const Center(
              child: Text("First Page", style: TextStyle(color: Colors.white, fontSize: 20),),
            ),
          ),
          Container(
            color: Colors.cyan,
            child: const Center(
              child: Text("First Page", style: TextStyle(color: Colors.white, fontSize: 20),),
            ),
          ),
          Container(
            color: Colors.deepPurple,
            child: const Center(
              child: Text("First Page", style: TextStyle(color: Colors.white, fontSize: 20),),
            ),
          ),
          Container(
            color: Colors.greenAccent,
            child: const Center(
              child: Text("First Page", style: TextStyle(color: Colors.white, fontSize: 20),),
            ),
          ),
        ],
      ),
    );
  }
}
