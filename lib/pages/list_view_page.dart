import 'package:flutter/material.dart';
import 'package:widgets_intermideate/pages/horizontal_list_view_page.dart';

class ListViewPage extends StatefulWidget {
  const ListViewPage({Key? key}) : super(key: key);
  static const String id = "list_view_page";

  @override
  _ListViewPageState createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("AppBar"),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const HorizontalListViewPage()));
              },
              icon: const Icon(Icons.navigate_next))
        ],
      ),
      body: ListView(
        children: [
          _itemList(title: "Image one", image: "assets/images/ic_image1.jpg"),
          _itemList(title: "Image two", image: "assets/images/ic_image2.jpg"),
          _itemList(
              title: "Image three", image: "assets/images/ic_image3.jpeg"),
          _itemList(title: "Image four", image: "assets/images/ic_image1.jpg"),
          _itemList(title: "Image two", image: "assets/images/ic_image2.jpg"),
          _itemList(
              title: "Image three", image: "assets/images/ic_image3.jpeg"),
        ],
      ),
    );
  }

  Widget _itemList({title, image}) {
    return Container(
      padding: const EdgeInsets.all(30),
      child: Row(
        children: [
          Image(
            height: 100,
            width: 100,
            fit: BoxFit.cover,
            image: AssetImage(image),
          ),
          const SizedBox(
            width: 20,
          ),
          Text(
            title,
            style: const TextStyle(
              color: Colors.blue,
              fontSize: 18,
            ),
          ),
        ],
      ),
    );
  }
}
