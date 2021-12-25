import 'package:flutter/material.dart';

class PageControllerNavigationBarPage extends StatefulWidget {
  const PageControllerNavigationBarPage({Key? key}) : super(key: key);
  static const String id = "page_controller_navigation_bar_page";

  @override
  _PageControllerNavigationBarPageState createState() => _PageControllerNavigationBarPageState();
}

class _PageControllerNavigationBarPageState extends State<PageControllerNavigationBarPage> {

  late PageController _pageController;
  int _selectedPage = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = PageController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("AppBar"),
        actions: [
          IconButton(
            onPressed: () {
              // Navigator.of(context).push(MaterialPageRoute(builder: (context) => const PageControllerNavigationBarPage()));
            },
            icon: const Icon(Icons.next_plan),
          ),
        ],
      ),
      body: PageView(
        controller: _pageController,
        onPageChanged: (int index){
          setState(() {
            _selectedPage = index;
          });
        },
        children: [
          Container(
            color: Colors.pink,
            child: const Center(
              child: Text("Home", style: TextStyle(color: Colors.white, fontSize: 20),),
            ),
          ),
          Container(
            color: Colors.cyan,
            child: const Center(
              child: Text("Business", style: TextStyle(color: Colors.white, fontSize: 20),),
            ),
          ),
          Container(
            color: Colors.deepPurple,
            child: const Center(
              child: Text("Add Photo", style: TextStyle(color: Colors.white, fontSize: 20),),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("Home")),
          BottomNavigationBarItem(icon: Icon(Icons.business), title: Text("Business")),
          BottomNavigationBarItem(icon: Icon(Icons.add_a_photo), title: Text("Photo")),
        ],
        currentIndex: _selectedPage,
        selectedItemColor: Colors.yellow,
        onTap: (int index){
          setState(() {
            _selectedPage = index;
            _pageController.animateToPage(index, duration: const Duration(milliseconds: 300), curve: Curves.easeIn);
          });
        },
      ),
    );
  }
}
