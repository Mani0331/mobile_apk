import 'package:flutter/material.dart';
import '../models/item.dart';

class ItemPageView extends StatefulWidget {
  @override
  _ItemPageViewState createState() => _ItemPageViewState();
}

class _ItemPageViewState extends State<ItemPageView> {
  final PageController _controller = PageController();
  int _currentPage = 0;

  final List<Item> items = [
    Item(title: 'Laptop', imagePath: 'assets/laptop.png'),
    Item(title: 'Smartphone', imagePath: 'assets/smartphone.png'),
    Item(title: 'Camera', imagePath: 'assets/camera.png'),
    Item(title: 'Watch', imagePath: 'assets/watch.png'),
    Item(title: 'Headphones', imagePath: 'assets/headphones.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Item Viewer')),
      body: PageView.builder(
        controller: _controller,
        onPageChanged: (index) {
          setState(() => _currentPage = index);
        },
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(item.imagePath, height: 200),
                SizedBox(height: 20),
                Text(item.title, style: TextStyle(fontSize: 24)),
                SizedBox(height: 10),
                Text('Page ${index + 1} of ${items.length}',
                    style: TextStyle(fontSize: 16, color: Colors.grey)),
              ],
            ),
          );
        },
      ),
    );
  }
}
