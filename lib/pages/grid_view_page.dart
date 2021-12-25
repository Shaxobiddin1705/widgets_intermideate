import 'package:flutter/material.dart';
import 'package:widgets_intermideate/pages/page_view_page.dart';

class GridViewPage extends StatefulWidget {
  const GridViewPage({Key? key}) : super(key: key);
  static const String id ="grid_view_page";

  @override
  _GridViewPageState createState() => _GridViewPageState();
}

class _GridViewPageState extends State<GridViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("AppBar"),
        actions: [
          IconButton(
            onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => const PageViewPage()));
            },
            icon:const  Icon(Icons.next_plan),
          ),
        ],
      ),
      body: Container(
        child: GridView.count(
          crossAxisCount: 2,
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
      ),
    );
  }

  Widget _itemList({title, image}) {
    return Container(
      color: Colors.red,
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.all(5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(
            height: 100,
            width: 100,
            fit: BoxFit.cover,
            image: AssetImage(image),

          ),
          const SizedBox(
            height: 10,
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
