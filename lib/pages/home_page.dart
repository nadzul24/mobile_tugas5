import 'package:belanja/models/item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'item_page.dart';

class HomePage extends StatelessWidget {
  final List<Item> items = [
    Item(name: 'Sugar', price: 5000, stock: 100),
    Item(name: 'Salt', price: 2000, stock: 200)
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text("Home Page"),
        ),
        body: Container(
          margin: EdgeInsets.all(8),
          child: ListView.builder(
              padding: EdgeInsets.all(8),
              itemCount: items.length,
              itemBuilder: (context, index) {
                final item = items[index];
                return InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ItemPage(tempItem: item)));
                  },
                  child: Card(
                    child: Container(
                      margin: EdgeInsets.all(8),
                      child: Row(
                        children: [
                          Expanded(child: Text(item.name)),
                          Expanded(
                              child: Text(
                            item.price.toString(),
                            textAlign: TextAlign.center,
                          )),
                          Expanded(
                              child: Text(
                            item.stock.toString(),
                            textAlign: TextAlign.end,
                          ))
                        ],
                      ),
                    ),
                  ),
                );
              }),
        ),
      ),
    );
  }
}
